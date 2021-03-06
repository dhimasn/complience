<?php

namespace App\Models;

use App\Helpers\ComplienceHelper;
use App\Helpers\GeneralHelper;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Formulir2 extends Model
{
    protected $table = 'formulir_2';

    public function storeData($request, $status, $jenis_form){
        try{
            DB::beginTransaction();
            $this->updateStatus($request->input('record_id'), $request->input('form_id'), $status);
            $this->storeFormulir($request, $jenis_form);
            DB::commit();
            return true;
        }catch(\Exception $e){
            DB::rollBack();
            report($e);
            return false;
        }
    }

    protected function storeFormulir($request, $jenis_form){
        $record_id = $request->input('record_id');
        $lab_id = $request->input('lab_id');
        $forms = FormData::where('jenis_form', $jenis_form)->get();
        $store = $this;
        $store->record_id = $record_id;
        $store->pengawas_id = \Auth::user()->id;
        $store->lab_uji = $lab_id;
        $store->sampel_sesuai = $request->input('sampel_sesuai');
        $store->nama_pemeriksan = $request->input('nama_pemeriksa');
        $store->nama_persetujuan = $request->input('nama_persetujuan');
        $store->form_data = ComplienceHelper::convertJsonForm($forms, $request, "round_robin");
        $store->save();
    }
    protected function updateStatus($record_id, $form_id, $status){
        $complience = Complience::where('record_id', $record_id)->first();
        $complience->status = $status;
        $complience->save();
        if($complience->kegiatan != 2 && $status == 5){
            $complience = Formulir4::where('id', $form_id)->first();
            $complience->status = 2;
            $complience->save();
        }
    }
    public function lab(){
        return $this->belongsTo(LabUji::class, 'lab_uji');
    }
    
    public function detail(){
        return $this->belongsTo(Complience::class, 'record_id');
    }
    public function formJson(){
        return isset($this->form_data) ? json_decode($this->form_data, true) :false;
    }
    public function formList(){
        $form = isset($this->form_data) ? json_decode($this->form_data, true) :false;
        return FormCategory::whereHas('childForm', function($q) use($form){
            $q->whereIn('id', array_keys($form));
        })->get();
    }
}

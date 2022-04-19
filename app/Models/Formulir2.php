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
            $this->updateStatus($request->input('record_id'), $status);
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
        $forms = FormData::where('jenis_form', $jenis_form)->get();
        $store = $this;
        $store->record_id = $record_id;
        $store->pengawas_id = \Auth::user()->id;
        $store->lab_uji = \Auth::user()->id_lab;
        $store->sampel_sesuai = $request->input('sampel_sesuai');
        $store->nama_pemeriksan = $request->input('nama_pemeriksa');
        $store->nama_persetujuan = $request->input('nama_persetujuan');
        $store->form_data = ComplienceHelper::convertJsonForm($forms, $request, "round_robin");
        $store->save();
    }
    protected function updateStatus($record_id, $status){
        $complience = Complience::where('record_id', $record_id)->first();
        $complience->status = $status;
        $complience->save();
        if($complience->kegiatan != 2){
            $complience = Formulir4::where('record_id', $record_id)->where('lab_uji', \Auth::user()->id_lab)->first();
            $complience->status = 2;
            $complience->save();
        }
    }
    public function lab(){
        return $this->belongsTo(LabUji::class, 'lab_uji');
    }
}

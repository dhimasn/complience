<?php

namespace App\Models;

use App\Helpers\ComplienceHelper;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class Formulir3 extends Model
{
    protected $table = 'formulir_3';
    public function storeData($request, $status, $jenis_form){
        try{
            DB::beginTransaction();
            $this->updateComplience($request->input('record_id'), $request->input('form_id'), $status);
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
        $store->nama_pemeriksan = $request->input('nama_pemeriksa');
        $store->nama_persetujuan = $request->input('nama_persetujuan');
        $store->deviasi_eer_she = $request->input('eerSHE');
        $store->deviasi_cspf_she = $request->input('cspfSHE');
        // $store->form_data = json_encode($request->except(['_token', 'record_id','sampel_sesuai']));
        $store->form_data = ComplienceHelper::convertJsonForm($forms, $request, "formulir_3");
        $store->save();
    }
    protected function updateComplience($record_id, $form_id, $status){
        $complience = Complience::where('record_id', $record_id)->first();
        $complience->status = $status;
        $complience->save();

        $complience = Formulir2::where('id', $form_id)->first();
        $complience->status = 2;
        $complience->save();
    }
    public function lab(){
        return $this->belongsTo(LabUji::class, 'lab_uji');
    }
    public function validasiPengujian(){
        $result = 'Sesuai';
        if(isset($this->deviasi_eer_she) && isset($this->deviasi_cspf_she)){
            if($this->deviasi_eer_she >= 10 || $this->deviasi_eer_she <= -10){
                $result = 'Tidak Sesuai';
            }elseif($this->deviasi_cspf_she >= 6 || $this->deviasi_cspf_she <= -6){
                $result = 'Tidak Sesuai';
            }
        }
        return $result;
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

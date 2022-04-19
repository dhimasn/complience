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
            $this->updateComplience($request->input('record_id'), $status);
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
        $store->nama_pemeriksan = $request->input('nama_pemeriksa');
        $store->nama_persetujuan = $request->input('nama_persetujuan');
        // $store->form_data = json_encode($request->except(['_token', 'record_id','sampel_sesuai']));
        $store->form_data = ComplienceHelper::convertJsonForm($forms, $request, "formulir_3");
        $store->save();
    }
    protected function updateComplience($record_id, $status){
        $complience = Complience::where('record_id', $record_id)->first();
        $complience->status = $status;
        $complience->save();

        $complience = Formulir2::where('record_id', $record_id)->where('lab_uji', \Auth::user()->id_lab)->first();
        $complience->status = 2;
        $complience->save();
    }
    public function lab(){
        return $this->belongsTo(LabUji::class, 'lab_uji');
    }
}

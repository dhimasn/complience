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
        $store->pengawas_id = 2; // dummy
        $store->sampel_sesuai = $request->input('sampel_sesuai');
        $store->form_data = ComplienceHelper::convertJsonForm($forms, $request, "round_robin");
        $store->save();
    }
    protected function updateComplience($record_id, $status){
        $complience = Complience::where('record_id', $record_id)->first();
        $complience->status = $status;
        $complience->save();
    }
}

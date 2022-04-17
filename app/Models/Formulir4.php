<?php

namespace App\Models;

use App\Helpers\ComplienceHelper;
use App\Helpers\GeneralHelper;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Formulir4 extends Model
{
    protected $table = 'formulir_4';

    public function storeData($request){
        try{
            DB::beginTransaction();
            
            $record_id = GeneralHelper::generateRecordId();
            $complience = new Complience();
            $complience->record_id = $record_id;
            $complience->product_id = $request->input('id_product');
            $complience->pengawas_id = 2;
            $complience->no_she = $request->input('1');
            $complience->merek = $request->input('2');
            $complience->kapasitas = $request->input('3');
            $complience->teknologi = $request->input('4');
            $complience->model = $request->input('model');
            $complience->manufaktur = $request->input('5');
            $complience->kode_produk = $request->input('6');
            $complience->negara = $request->input('7');
            $complience->harga = $request->input('8');
            $complience->status = $request->input('kegiatan') == '3' ? '3' : '4';
            $complience->kegiatan = $request->input('kegiatan');
            $complience->save();

            foreach ($request->input('lab_uji') as $lab_uji) {
                $forms = FormData::where('jenis_form', 4)->get();
                $store = new Formulir4();
                $store->record_id = $record_id;
                $store->pengawas_id = \Auth::user()->id;
                $store->lab_uji = $lab_uji;
                $store->kegiatan_lainnya = $request->input('kegiatan_lainnya') !== "" ? $request->input('kegiatan_lainnya') : null;
                $store->form_data = ComplienceHelper::convertJsonForm($forms, $request, "round_robin");
                $store->save();
            }
            DB::commit();
            return true;
        }catch(\Exception $e){
            DB::rollBack();
            report($e);
            return false;
        }
    }
    public function lab(){
        return $this->belongsTo(LabUji::class, 'lab_uji');
    }
}

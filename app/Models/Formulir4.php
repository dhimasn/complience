<?php

namespace App\Models;

use App\Helpers\GeneralHelper;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Formulir4 extends Model
{
    protected $table = 'formulir_4';

    public function storeData($request){
        try{
            DB::beginTransaction();
            $forms = FormFormulir4::all();
            $arr_form_data = array();
            foreach ($forms as $form) {
                if ($form->data_entry_type == 'File') {
                    $id_form = $form->id_form_roundrobin;
                    if($request->hasFile($id_form)){
                        $imageName = time() . '.' . $request->file($id_form)->extension();
                        $request->$id_form->move(storage_path('images/round_robin'), $imageName);
                        $arr_form_data[$id_form] = $imageName;
                    }
                } else {
                    $arr_form_data[$form->id_form_roundrobin] = $request->input($form->id_form_roundrobin);
                }
            }
            $record_id = GeneralHelper::generateRecordId();
            $complience = new Complience();
            $complience->record_id = $record_id;
            $complience->product_id = $request->input('id_product');
            $complience->pengawas_id = 2;
            $complience->no_she = $request->input('1');
            $complience->merek = $request->input('2');
            $complience->teknologi = $request->input('3');
            $complience->manufaktur = $request->input('5');
            $complience->kode = $request->input('6');
            $complience->negara = $request->input('7');
            $complience->harga = $request->input('8');
            $complience->status = 3; // RRT
            $complience->save();
    
            $store = new Formulir4();
            $store->record_id = $record_id;
            $store->pengawas_id = 2; // dummy
            $store->form_data = json_encode($arr_form_data);
            $store->save();
            DB::commit();
            return true;
        }catch(\Exception $e){
            DB::rollBack();
            report($e);
            return false;
        }
    }
}

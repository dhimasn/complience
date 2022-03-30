<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\GeneralHelper;
use App\Helpers\ProductHelper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormData;
use App\Models\Formulir4;
use Exception;
use Illuminate\Support\Facades\DB;
use Session;

class FormEmpatController extends Controller
{

    public function pilihProduk()
    {
        return view('pages.formulir4.pilihproduk');
    }
    public function form()
    {
        $productHelper = new ProductHelper();
        $products = $productHelper->getAllProducts(2);
        return view('pages.formulir4.form', compact('products'));
    }
    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            $forms = \DB::table('form_roundrobin')->get();
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
            $resp['status'] = 'success';
            Session::flash('success');
        } catch (Exception $e) {
            Session::flash('error');
            DB::rollBack();
            report($e);
        }
        return back();
    }
}

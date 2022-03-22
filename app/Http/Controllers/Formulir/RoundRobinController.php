<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\ProductHelper;
use App\Http\Controllers\Controller;
use App\Models\FormRoundRobin;
use App\Models\RoundRobin;
use Illuminate\Http\Request;

class RoundRobinController extends Controller
{
    public function index(){
        $productHelper = new ProductHelper();
        $products = $productHelper->getAllProducts(2);
        // dd($products);
        return view('pages.formulir4.index', compact('products'));
    }
    public function store(Request $request){
        $forms = FormRoundRobin::all();
        $arr_form_data = array();
        foreach ($forms as $form) {
            if($form->data_entry_type=='File'){
                $id_form = $form->id_form_roundrobin;
                $imageName = time().'.'.$request->file($id_form)->extension(); 
                $request->$id_form->move(storage_path('images/round_robin'), $imageName); 
                $arr_form_data[$id_form] = $imageName;
            }else{
                $arr_form_data[$form->id_form_roundrobin] = $request->input($form->id_form_roundrobin);
            }
        }
        $store = new RoundRobin();
        $store->id_product = $request->input('id_product');
        $store->id_inspektur = 2; // dummy
        $store->form_data = json_encode($arr_form_data);
        $store->status = 1;
        $store->save();
        return redirect()->back();
    }
}


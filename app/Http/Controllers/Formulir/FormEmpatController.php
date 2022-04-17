<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\GeneralHelper;
use App\Helpers\ProductHelper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\FormCategory;
use App\Models\Formulir4;
use App\Models\LabUji;
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
        $labUjis = LabUji::get();
        $forms = FormCategory::where('jenis_form', 4)->get();
        $helpers = new GeneralHelper();
        return view('pages.formulir4.form', compact('products','labUjis','forms','helpers'));
    }
    public function store(Request $request)
    {
        $formulir = new Formulir4();
        if ($formulir->storeData($request)) {
            Session::flash('success', 'Disimpan Kedalam Database');
        } else {
            Session::flash('error');
        }
        return back();
    }
}

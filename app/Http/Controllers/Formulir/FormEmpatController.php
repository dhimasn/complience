<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\ProductHelper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
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
        return view('pages.formulir4.form', compact('products','labUjis'));
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

<?php

namespace App\Http\Controllers\Formulir;

use App\Helpers\ProductHelper;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Formulir4;
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
        $formulir = new Formulir4();
        if ($formulir->storeData($request)) {
            Session::flash('success', 'Disimpan Kedalam Database');
        } else {
            Session::flash('error');
        }
        return back();
    }
}

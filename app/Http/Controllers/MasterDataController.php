<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MasterDataController extends Controller
{
    public function complience(){
        return view('pages.masterdata.complience');
    }
    public function produk(){
        return view('pages.masterdata.produk');
    }
    public function detailComplience(){
        return view('pages.masterdata.detail-complience');
    }
}

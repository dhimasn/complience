<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MasterDataController extends Controller
{
    public function complience(){
        return view('pages.masterdata.complience');
    }
    public function detailComplience(){
        return view('pages.masterdata.detail-complience');
    }
}

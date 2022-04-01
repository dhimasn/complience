<?php

namespace App\Http\Controllers;

use App\Models\Complience;
use Illuminate\Http\Request;

class MasterDataController extends Controller
{
    public function complience(){
        $compliences = Complience::get();
        $status = config('global.status_comp');
        return view('pages.masterdata.complience', compact('compliences','status'));
    }
    public function produk(){
        return view('pages.masterdata.produk');
    }
    public function detailComplience(){
        return view('pages.masterdata.detail-complience');
    }
}

<?php

namespace App\Http\Controllers\MasterData;

use App\Http\Controllers\Controller;
use App\Models\Complience;
use Illuminate\Http\Request;

class PengujianUlangController extends Controller
{
    public function index(){
        $compliences = Complience::where('kegiatan', 2)->get();
        return view('pages.masterdata.pengujian_ulang.index', compact('compliences'));
    }
}

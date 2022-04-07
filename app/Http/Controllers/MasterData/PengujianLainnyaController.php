<?php

namespace App\Http\Controllers\MasterData;

use App\Http\Controllers\Controller;
use App\Models\Complience;
use Illuminate\Http\Request;

class PengujianLainnyaController extends Controller
{
    public function index(){
        $compliences = Complience::where('kegiatan', 5)->orderBy('updated_at', 'desc')->get();
        return view('pages.masterdata.pengujian_lainnya.index', compact('compliences'));
    }
}

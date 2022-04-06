<?php

namespace App\Http\Controllers\MasterData;

use App\Http\Controllers\Controller;
use App\Models\Complience;
use Illuminate\Http\Request;

class UjiPetikController extends Controller
{
    public function index(){
        $compliences = Complience::where('kegiatan', 2)->get();
        return view('pages.masterdata.uji_petik.index', compact('compliences'));
    }
}

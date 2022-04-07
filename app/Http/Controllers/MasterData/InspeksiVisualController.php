<?php

namespace App\Http\Controllers\MasterData;

use App\Http\Controllers\Controller;
use App\Models\Complience;
use Illuminate\Http\Request;

class InspeksiVisualController extends Controller
{
    public function index(){
        $compliences = Complience::where('status', 1)->where('kegiatan', 1)->orderBy('updated_at', 'desc')->get();
        return view('pages.masterdata.inspeksi_visual.index', compact('compliences'));
    }
}

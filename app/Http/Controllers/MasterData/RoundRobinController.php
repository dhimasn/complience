<?php

namespace App\Http\Controllers\MasterData;

use App\Http\Controllers\Controller;
use App\Models\Complience;
use Illuminate\Http\Request;

class RoundRobinController extends Controller
{
    public function index(){
        $compliences = Complience::where('kegiatan', 1)->get();
        return view('pages.masterdata.round_robin.index', compact('compliences'));
    }
}

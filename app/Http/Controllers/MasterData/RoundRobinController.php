<?php

namespace App\Http\Controllers\MasterData;

use App\Http\Controllers\Controller;
use App\Models\Complience;
use Illuminate\Http\Request;

class RoundRobinController extends Controller
{
    public function index(){
        $compliences = Complience::where('kegiatan', 3)->orderBy('updated_at', 'desc')->get();
        return view('pages.masterdata.round_robin.index', compact('compliences'));
    }
}

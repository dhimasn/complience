<?php

namespace App\Http\Controllers;

use App\Helpers\HighRisk;
use App\Models\Complience;
use Illuminate\Http\Request;

class HighRiskController extends Controller
{
    private $highrisk;

    public function __construct()
    {
        $this->highrisk = new HighRisk();
    }
    
    public function index(){
        //$highrisk = $this->highrisk->getListDataHighRisk();
        $highrisk = Complience::where('status', 1)->where('kegiatan', 1)->orderBy('updated_at', 'desc')->get();
        return view('pages.highrisk.index', compact('highrisk'));
    }

    public function sync(){
        $highrisk = $this->highrisk->sync();
    }


}

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
        $highrisk = $this->highrisk->getListDataHighRisk();
        return view('pages.highrisk.index', compact('highrisk'));
    }

    public function sync(){
        $this->highrisk->sync();
        $highrisk = $this->highrisk->getListDataHighRisk();
        return view('pages.highrisk.index', compact('highrisk'));
    }

    public function report(){
        $highrisk = $this->highrisk->report();
        return view('pages.highrisk.report', compact('highrisk'));
    }

    public function viewTambahReport(){
        return view('pages.highrisk.tambahreport');
    }

    public function volume(){
        $highrisk = Complience::where('status', 1)->where('kegiatan', 1)->orderBy('updated_at', 'desc')->get();
        return view('pages.highrisk.volume', compact('highrisk'));
    }

    public function update(){
        $highrisk = $this->highrisk->refrence();
        return view('pages.highrisk.update', compact('highrisk'));
    }


}

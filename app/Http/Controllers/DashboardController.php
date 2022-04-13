<?php

namespace App\Http\Controllers;

use App\Models\Formulir1;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(){
        $forms1 = Formulir1::get();
        $dataForm = array();
        foreach ($forms1 as $form1) {
            $latLong = explode(',', $form1->lat_long);
            $dataForm[] = array(
                'lokasi_pengawasan' => $form1->lokasi_pengawasan,
                'lat' => $latLong[0],
                'long' => $latLong[1],
            );
        }
        return view('pages.dashboard.index', compact('dataForm'));
    }
}

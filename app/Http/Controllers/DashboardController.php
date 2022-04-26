<?php

namespace App\Http\Controllers;

use App\Models\Complience;
use App\Models\Formulir1;
use App\User;
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
                'sesuai' => null !== $form1->formulir3 && $form1->formulir3->validasiPengujian() == 'Tidak Sesuai' ? '1' : '0',
                'lat' => $latLong[0],
                'long' => $latLong[1],
            );
        }
        $totalProdukInspeksi = Complience::get()->unique('no_she')->count();
        $totalPengawasLapangan = User::where('id_user_role', 2)->count();
        $complienceUjipetik = Complience::where('kegiatan', 2)->get();
       
        $ketidaksesuai['sesuai'] = 0;
        $ketidaksesuai['tidak_sesuai'] = 0;
        foreach ($complienceUjipetik as $comp) {
            if(isset($comp->formulir3)){
                if($comp->formulir3->validasiPengujian() == 'Sesuai'){
                    $ketidaksesuai['sesuai']++;
                }else{
                    $ketidaksesuai['tidak_sesuai']++;
                }
            }
        }
        return view('pages.dashboard.index', compact('dataForm','totalProdukInspeksi','totalPengawasLapangan','ketidaksesuai'));
    }
}

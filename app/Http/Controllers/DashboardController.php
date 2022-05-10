<?php

namespace App\Http\Controllers;

use App\Models\Complience;
use App\Models\Formulir1;
use App\Models\Uji_petik;
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
        $statusUjiPetiks = Complience::whereNotIn('status', [7,8])->where('kegiatan', 2)->get();
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
        $kepatuhan = $this->countKepatuhan($forms1);
        $status = config('global.status');
        return view('pages.dashboard.index', compact(
            'dataForm',
            'totalProdukInspeksi',
            'totalPengawasLapangan',
            'ketidaksesuai',
            'kepatuhan',
            'statusUjiPetiks',
            'status',
        ));
    }
    public function getProdukToko($name){
        $result = array();
        $ujiPetiks = Uji_petik::where('lokasi_pengawasan', 'like', '%'.$name.'%')->get();
        $form1s = Formulir1::where('lokasi_pengawasan', 'like', '%'.$name.'%')->get();
        $status = config('global.status');
        foreach ($form1s as $form1) {
            $dataForms = json_decode($form1->form_data, true);
            $result[$form1->complience->record_id] = array(
                'no_she' => $form1->complience->no_she ?? '-',
                'model' => $form1->complience->model,
                'merek' => $form1->complience->merek,
                'tipe' => 'Inspeksi Visual',
                'kepatuhan' => $dataForms[34],
                'deviasi' => '-',
                'status' => 'Selesai',
                'datetime_offline' => $form1->datetime_offline,
            );
        }
        foreach ($ujiPetiks as $ujiPetik) {
            $dataForms = json_decode($ujiPetik->formulir1->form_data, true);
            $result[$ujiPetik->complience->record_id] = array(
                'no_she' => $ujiPetik->complience->no_she,
                'model' => $ujiPetik->complience->model,
                'merek' => $ujiPetik->complience->merek,
                'tipe' => 'Uji Petik',
                'kepatuhan' => $dataForms[34],
                'deviasi' => $ujiPetik->formulir3->deviasi_eer_she ?? '-',
                'status' => $status[$ujiPetik->complience->status] ?? '-',
                'datetime_offline' => $ujiPetik->datetime_offline,
            );
        }
        return response()->json(['comp' => $result], 200);
    }
    public function countKepatuhan($form1){
        $result['1'] = 0; // Label Kabur/Tidak terlihat/Rusak – data dari Visibilitas LTHE 
        $result['2'] = 0; // Desain Label Tidak Sesuai – data dari Kesesuaian Visual LTHE 
        $result['3'] = 0; // Label palsu – data dari Kesesuaian Visual LTHE
        $result['4'] = 0; // Label tidak sesuai dengan produk - data dari Kesesuaian Visual LTHE
        $result['5'] = 0; // Tidak ada label – data dari Kesesuain Visual LTHE 
        $dataForms = array();

        $creteria['1'] = array(
            "Label kabur atau rusak karena tindakan produsen atau importir",
            "Label kabur atau rusak karena tindakan pengecer",
            "Label sebagian atau seluruhnya ditutupi oleh label lain atau informasi pemasaran",
        ); 
        $creteria['2'] = array(
            "Desain label salah (warna, ukuran, dll)"
        ); 
        $creteria['3'] = array(
            "Label tampaknya palsu"
        ); 
        $creteria['4'] = array(
            "Label tidak sesuai dengan model fisik produk"
        ); 

        foreach ($form1 as $key) {
            $dataForms[] = json_decode($key->form_data, true);
        }
        foreach ($dataForms as $dataForm) {
            $visibilitasLthe = $dataForm[33];
            $kesesuaian = $dataForm[34];
            if($visibilitasLthe == "Tidak berlaku - label tidak dibubuhkan" || $kesesuaian == "Tidak berlaku - label tidak dibubuhkan"){
                $result['5']++;
            }
            if(in_array($visibilitasLthe, $creteria['1'])){
                $result['1']++;
            }
            if(in_array($kesesuaian, $creteria['2'])){
                $result['2']++;
            }
            if(in_array($kesesuaian, $creteria['3'])){
                $result['3']++;
            }
            if(in_array($kesesuaian, $creteria['4'])){
                $result['4']++;
            }
        }
        return $result;
    }
}

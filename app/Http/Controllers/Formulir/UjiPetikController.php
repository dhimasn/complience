<?php

namespace App\Http\Controllers\Formulir;

use App\Http\Controllers\Controller;
use App\Models\Complience;
use App\Models\FormLabDB;
use Illuminate\Http\Request;

class UjiPetikController extends Controller
{
    public function index(){
        $compliences = Complience::where('status', 2)->where('lab_uji', '!=', '')->get();
        return view('pages.ujipetik.index', compact('compliences'));
    }
    public function form($record_id){
        $formUnitIndoor = array(
            'Kondisi kemasan produk AC tidak rusak',
            'Periksa kondisi fisik produk AC secara visual seperti bodi unit indoor',
            'Kondisi fin atau sirip alat penukar kalor tidak rusak, deformasi, berubah warna pada unit indoor',
            'Kondisi kipas pada unit indoor tidak retak, rusak atau menyentuh bagian lainnya',
            'Tidak ada komponen aksesoris yang hilang atau tidak lengkap seperti yang dijelaskan di dalam buku 
            petunjuk pengoperasian. Seperti installing holder, screw, remote control dan lain-lain',
            'Pastikan terdapat penutup katub atau tidak ada kerusakan pada ulir sambungan pipa antara unit indoor',
            'Pipa penghubung tube refrigerant antara unit indoor dan outdoor tidak penyok',
        );
        $formUnitOutdoor = array(
            'Kondisi kemasan produk AC tidak rusak',
            'Periksa kondisi fisik produk AC secara visual seperti bodi unit outdoor',
            'Kondisi fin atau sirip alat penukar kalor tidak rusak, deformasi, berubah warna pada unit outdoor',
            'Kondisi kipas pada unit outdoor tidak retak, rusak atau menyentuh bagian lainnya',
            'Pastikan terdapat penutup katub atau tidak ada kerusakan pada ulir sambungan pipa antara unit outdoor',
            'Pipa 2 way dan 3 way valve dalam keadaan tertutup (Tidak ada kebocoran gas)'
        );
        $complience = Complience::where('record_id', $record_id)->first();
        return view('pages.ujipetik.form',compact('formUnitIndoor', 'formUnitOutdoor','complience'));
    }
    public function store(Request $request){
        $complience = Complience::where('record_id', $request->input('record_id'))->first();
        $complience->status = 4;
        $complience->save();
        return back()->with('success', 'Disimpan Kedalam Database');
    }
}

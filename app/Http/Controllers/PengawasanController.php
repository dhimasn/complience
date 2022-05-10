<?php

namespace App\Http\Controllers;

use App\Models\Complience;
use Illuminate\Http\Request;

class PengawasanController extends Controller
{
    public function index(){
        return view('pages.pengawasan.index');
    }
    public function pemilihanLabUji(){
        $compliences = Complience::where('status', 2)->orderBy('created_at', 'desc')->get();
        return view('pages.pengawasan.pilihlabuji', compact('compliences'));
    }
    public function formPemilihanLabUji($record_id){
        $complience = Complience::where('record_id', $record_id)->first();
        $form_data = json_decode($complience->formulir1->form_data, true);
        return view('pages.pengawasan.form-pilihlabuji', compact('complience','form_data'));
    }
    public function storePemilihanLabUji(Request $request){
        $complience = Complience::where('record_id', $request->input('record_id'))->first();
        $complience->no_she = $request->input('no_she');
        $complience->merek = $request->input('merek');
        $complience->kapasitas = $request->input('kapasitas');
        $complience->teknologi = $request->input('teknologi');
        $complience->manufaktur = $request->input('manufaktur');
        $complience->kode_produk = $request->input('kode_produk');
        $complience->negara = $request->input('negara');
        $complience->lab_uji = $request->input('lab_uji');
        $complience->status = 4;
        $complience->save();

        $form_data = json_decode($complience->formulir1->form_data, true);
        $form_data[4] = $request->input('4');
        $form_data[7] = $request->input('7');
        $complience->formulir1->lokasi_pengawasan = $request->input('lokasi_pengawasan');
        $complience->formulir1->form_data = $form_data;
        $complience->formulir1->save();
        return redirect()->route('pengawasan.pemilihanlabuji')->with('success', 'Data telah terkirim ke Lab tujuan');
    }
}

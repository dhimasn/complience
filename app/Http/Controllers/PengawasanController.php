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
        $compliences = Complience::where('status', 1)->get();
        return view('pages.pengawasan.pilihlabuji', compact('compliences'));
    }
    public function formPemilihanLabUji($record_id){
        $complience = Complience::where('record_id', $record_id)->first();
        return view('pages.pengawasan.form-pilihlabuji', compact('complience'));
    }
    public function storePemilihanLabUji(Request $request){
        $complience = Complience::where('record_id', $request->input('record_id'))->first();
        $complience->lab_uji = $request->input('lab_uji');
        $complience->save();
        return back()->with('success', 'Data telah terkirim ke Lab tujuan');
    }
}

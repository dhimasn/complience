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
    public function formPemilihanLabUji(){
        return view('pages.pengawasan.form-pilihlabuji');
    }
    public function storePemilihanLabUji(){
        return back()->with('success', 'Data telah terkirim ke Lab tujuan');
    }
}

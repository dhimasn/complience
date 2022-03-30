<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PengawasanController extends Controller
{
    public function index(){
        return view('pages.pengawasan.index');
    }
    public function pemilihanLabUji(){
        return view('pages.pengawasan.pilihlabuji');
    }
    public function formPemilihanLabUji(){
        return view('pages.pengawasan.form-pilihlabuji');
    }
    public function storePemilihanLabUji(){
        return back()->with('success', 'Data telah terkirim ke Lab tujuan');
    }
}

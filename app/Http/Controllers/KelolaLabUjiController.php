<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\LabUji;
use Illuminate\Http\Request;
use Session;

class KelolaLabUjiController extends Controller
{
    
    public function index(){
        $labs = LabUji::get();
        return view('pages.laboratorium.index', compact('labs'));
    }

    public function formLaboratorium(){
        $listLab = LabUji::get();
        return view('pages.laboratorium.formLaboratorium', compact('listLab'));
    }

    public function store(Request $request){
        $labUji = new LabUji();
        if ($labUji->storeData($request)) {
            Session::flash('success', 'Disimpan Kedalam Database');
        } else {
            Session::flash('error');
        }
        return redirect()->route('laboratorium.index');
    }

    public function detail(){

    }

    public function update($nama){
        $lab = LabUji::where('nama', $nama)->first();
        return view('pages.laboratorium.update', compact('lab'));
    }

    public function delete($nama){
        //delete database
        $user = LabUji::where('nama', $nama)->delete();

        if($user){
            Session::flash('success', 'Haspus data berhasil');
        } else {
            Session::flash('error');
        }

        return redirect()->route('laboratorium.index');
    }

}

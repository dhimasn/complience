<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\LabUji;

class KelolaLabUjiController extends Controller
{
    
    public function index(){
        $labs = LabUji::get();
        return view('pages.laboratorium.index', compact('labs'));
    }

}

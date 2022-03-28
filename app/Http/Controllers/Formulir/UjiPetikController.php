<?php

namespace App\Http\Controllers\Formulir;

use App\Http\Controllers\Controller;
use App\Models\FormLabDB;
use Illuminate\Http\Request;

class UjiPetikController extends Controller
{
    public function index(){
        return view('pages.ujipetik.index');
    }
    public function form(){
        // $forms = FormLabDB::whereIn('id_form_lab_role', [2, ])
        return view('pages.ujipetik.form');
    }
}

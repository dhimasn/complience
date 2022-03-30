<?php

namespace App\Http\Controllers\Formulir;

use App\User;
use App\Repo\UserDb;
use App\Helper\JsonDecode;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\FormLabDB;
use App\Repo\InpeksiDb;
use Exception;
use Illuminate\Support\Facades\Auth;
use stdClass;

class FormTigaController extends Controller
{
    public function index(){
        return view('pages.formulir3.index');
    }
    public function ujiPetik(){
        return view('pages.formulir3.ujipetik');
    }
    public function roundRobin(){
        return view('pages.formulir3.roundrobin');
    }
    public function form(){
        return view('pages.formulir3.form');
    }
}

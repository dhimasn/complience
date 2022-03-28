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
    }
    public function form(){
        // $forms = FormLabDB::whereIn('id_form_lab_role', [2, ])
        return view('pages.formulir3.form');
    }
    public function store(){

    }

    public function GetbyRole(Request $request){
        
    }

    public function GetbyRoles(Request $request){
       
    }

    public function PostFormThree(Request $request){
       
    }

    public function DeleteByIdProduct(Request $request){

    }

    public function GetList(Request $request){

    }

    public function parseIdForm(){

    }

}

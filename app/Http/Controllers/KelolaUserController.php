<?php

namespace App\Http\Controllers;

use App\User;
use App\Repo\UserDb;
use App\Helper\JsonDecode;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repo\Inspeksi;
use Exception;
use Illuminate\Support\Facades\Auth;
use stdClass;

class KelolaUserController extends Controller
{
     private $formInpeksi_db;
    
    public function __construct()
    {
        $this->formInpeksi_db = new Inspeksi();
    }

    public function createUser(Request $request){
        
    }

    public function updateUser(Request $request){
       
    }

    public function deleteUser(Request $request){
       
    }

    public function GetListUser(Request $request){

    }

    public function GetDetailUser(Request $request){

    }

}

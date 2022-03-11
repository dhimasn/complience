<?php

namespace App\Http\Controllers;

use App\User;
use App\Repo\UserDb;
use App\Helper\JsonDecode;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repo\InpeksiDb;
use Exception;
use Illuminate\Support\Facades\Auth;
use stdClass;

class FormInspeksiController extends Controller
{
    private $formInpeksi_db;

    public function __construct()
    {
        $this->formInpeksi_db = new InpeksiDb();
    }

    public function GetbyRole(Request $request){
        try{
            
            $result = $this->formInpeksi_db->getRole($request->role);
            return response()->json(['msg' => true, 'form_inspeksi' => $result]);
            
        }catch(Exception $e)
        {
            return response()->json(['msg' => false]);
        }
    }

    public function GetByRoles(Request $request){
        try{
            $result = $this->formInpeksi_db->getRoles($request->roles);
            return response()->json(['msg' => true, 'form_inspeksi' => $result]);
        }catch(Exception $e)
        {
            return response()->json(['msg' => false]);
        }
    }

    public function PostFormOne(Request $request){
        try{
            
            $model = new stdClass();
            print_r($model);exit;

        }catch(Exception $e)
        {
            return response()->json(['msg' => false]);
        }

    }

    public function DeleteByIdProduct(Request $request){

    }


}

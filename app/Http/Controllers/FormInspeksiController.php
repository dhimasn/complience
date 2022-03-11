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
            return response()->json(['success'=> true, 'message' => '200 Ok', 'data' => $result]);
            
        }catch(Exception $e)
        {
            return response()->json(['message' => false]);
        }
    }

    public function GetByRoles(Request $request){
        try{
            
            $result = $this->formInpeksi_db->getRoles($request->roles);
            return response()->json(['success'=> true, 'message' => '200 Ok', 'data' => $result]);

        }catch(Exception $e)
        {
            return response()->json(['message' => false]);
        }
    }

    public function PostFormOne(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $data = $request[0];
            
            if(!empty($data)){

                for ($x = 1; $x <= 31; $x++) {

                    $this->formInpeksi_db->createDataInspeksi($data['iv'.$x.''], $data["id"], 1); //nomor she
                    
                    //create base64
                    //iv18
                    
                }
                
                $response['success'] = true;
                $response['message'] = "200 Ok";
            
            }

            return response()->json($response, 200);
    
        }catch(Exception $e)
        {
            return response()->json(['message' => false]);
        }

    }

    public function PostFormOnePetik(Request $request){

        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $data = $request[0];
            
            if(!empty($data)){

                //
                
            }

            return response()->json($response, 200);
    
        }catch(Exception $e)
        {
            return response()->json(['message' => false]);
        }

    }

    public function DeleteByIdProduct(Request $request){

    }

    public function GetList(Request $request){

    }

}

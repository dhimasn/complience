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
            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $role = $request->role;

            if(!empty($role)){
                
                $result = $this->formInpeksi_db->getRole($role);
                if($result){

                    $response['success'] = true;
                    $response['message'] = "200 Ok";
                    $response['data'] = $result;
                }
            }

            return response()->json($response, 200);
            
        }catch(Exception $e)
        {
            return response()->json(['message' => false]);
        }
    }

    public function GetByRoles(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $roles = $request->roles;
            if(!empty($roles)){

                $result = $this->formInpeksi_db->getRoles($roles);
                $response['success'] = true;
                $response['message'] = "200 Ok";
                $response['data'] = $result;
            }

            return response()->json($response, 200);

        }catch(Exception $e)
        {
            return response()->json(['message' => false]);
        }
    }

    public function PostFormOne(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $dt = $request[0];
            
            if(!empty($dt)){

                for ($x = 1; $x <= 31; $x++) {
                    
                    //parse form;
                    $this->parseIdForm();

                    if($x != 18){

                        $this->formInpeksi_db->createDataInspeksi($dt['iv'.$x.''], $dt["id"], $x);
                    
                    }else{

                        $this->formInpeksi_db->createDataInspeksi($dt['iv'.$x.''], $dt["id"], 18); 
                        
                        $dataInspeksi = $this->formInpeksi_db->getDataInspeksiByIdProdukIdFormInpeksi($dt["id"], 18);
                       
                        if(!empty($dataInspeksi)){
                        
                            $base64 = base64_encode($dt['iv'.$x.'']);
                            $this->formInpeksi_db->createDataInspeksiFile( $dataInspeksi->Id_data_produk_inspeksi, $dt["id"], $base64);
                                                        
                        }    
                    } 
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
            $dt = $request[0];
            
            if(!empty($dt)){

                for ($x = 1; $x <= 6; $x++) {

                        //parse form;
                        $this->parseIdForm();
    
                        if($x == 1){
    
                            $this->formInpeksi_db->createDataInspeksi($dt['UP'.$x.''], $dt["id"], $x); 
                        
                        }else{
    
                            $this->formInpeksi_db->createDataInspeksi($dt['UP'.$x.''], $dt["id"], $x); 
                            
                            $dataInspeksi = $this->formInpeksi_db->getDataInspeksiByIdProdukIdFormInpeksi($dt["id"], $x);
                            
                            if(!empty($dataInspeksi)){
                            
                                $base64 = base64_encode($dt['UP'.$x.'']);
                                $this->formInpeksi_db->createDataInspeksiFile( $dataInspeksi->Id_data_produk_inspeksi, $dt["id"], $base64);
                                                           
                            }    
                        } 
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

    public function DeleteByIdProduct(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $deleteId = $request[0]['id'];
            if(!empty($deleteId)){
               
                $this->formInpeksi_db->deleteDataProdukInspeksi($deleteId);
                $response['success'] = true;
                $response['message'] = "200 Ok";
            
            }

            return response()->json($response, 200);

        }catch(Exception $e)
        {
            return response()->json(['message' => false]);
        }
    }

    public function GetList(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $result = $this->formInpeksi_db->getListDataProdukInspeksi();

            if(!empty($result)){
                
                //$response_detail_produk = ProdukResponse::responseProduk($prduk);
                $response['success'] = true;
                $response['message'] = "200 Ok";
                $response['data'] = $result;
            
            }

            return response()->json($response, 200);

        }catch(Exception $e)
        {
            return response()->json(['message' => false]);
        }
    }

    public function GetDetail(Request $request){

    }

    public function parseIdForm(){

    }

}
<?php

namespace App\Http\Controllers;


use App\Repo\User;
use App\Helper\JsonDecode;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repo\Inspeksi;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use stdClass;

class KelolaUserController extends Controller
{
    private $UserDB;
    
    public function __construct()
    {
        $this->UserDB = new User();
    }

    public function createUser(Request $request){

        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";

            $user['nama_user'] = $request->nama_user;
            $user['id_user_role'] = $request->id_user_role;
 
            if(!empty($user)){
                
                $result = $this->UserDB->createUser($user);

                if($result == true){

                    $response['success'] = true;
                    $response['message'] = "200 Ok";
                    $response['data'] = $result;

                }

            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);       
    }

    public function updateUser(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            
            $update['id_user'] = $request->id_user;
            $update['nama_user'] = $request->nama_user;
            $update['id_user_role'] = $request->id_user_role;
            
            if(!empty($update)){
               
                $this->UserDB->updateDataUser($update);
                $response['success'] = true;
                $response['message'] = "200 Ok";
            
            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);
    }

    public function deleteUser(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            $deleteIds = $request['id_user'];
            
            if(!empty($deleteIds)){
               
                $this->UserDB->deleteDataUser($deleteIds);
                $response['success'] = true;
                $response['message'] = "200 Ok";
            
            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);
    }

    public function GetListUser(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";

            $result = $this->UserDB->getListDataUser();

            if(!empty($result)){
            
                $response['success'] = true;
                $response['message'] = "200 Ok";
                $response['data'] = $result;
            
            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);
    }

    public function GetDetailUser(Request $request){
        try{

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";

            $result = $this->UserDB->getUserByIdUser($request->id_user);

            if(!empty($result)){
            
                $response['success'] = true;
                $response['message'] = "200 Ok";
                $response['data'] = $result;
            
            }

        }catch(Exception $e)
        {
            DB::rollBack();
            throw $e;
        }
        DB::commit();
        return response()->json($response, 200);
    }

}

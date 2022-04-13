<?php

namespace App\Http\Controllers;


use App\Helpers\User;
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
    
    public function index(){
        $users = $this->UserDB->getListDataUser();
        return view('pages.user.index', compact('users'));
    }

    public function form(Request $request){
        
        $user = array(
            'username',
            'name',
            'id_user_role',
            'id_lab',
            'email',
            'password',
        );

        return view('pages.user.form', compact('user')); 

    }

    public function store(Request $request){
        
        print_r($request[0]);exit;

        //$formulir = new Formulir2();
        //$status = 5;
        //$jenis_form = 5;
        //if ($formulir->storeData($request, $status, $jenis_form)) {
            //Session::flash('success', 'Disimpan Kedalam Database');
        //} else {
            //Session::flash('error');
        //}

        return redirect()->route('user.index');

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

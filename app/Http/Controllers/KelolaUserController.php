<?php

namespace App\Http\Controllers;


use App\Helpers\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Exception;
use Illuminate\Support\Facades\DB;
use Session;

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

    public function pilihUser(){
        return view('pages.user.pilihuser');
    }

    public function formPengawasan(){
        return view('pages.user.formPengawasan'); 
    }

    public function formLaboratorium(Request $request){   
        $listLab = $this->UserDB->getListLabRole();
        return view('pages.user.formLaboratorium', compact('listLab')); 
    }

    public function store(Request $request){

        $check = $this->UserDB->getUserBynameUserandRole($request, 2);

        if(!empty($check)){

            Session::flash('Data Sudah Ada');

        }else{

            $user = $this->UserDB->createUser($request, 2);

            if($user){
                Session::flash('success', 'Disimpan Kedalam Database');
            } else {
                Session::flash('error');
            }

        }

        return redirect()->route('user.index');

    }

    public function store2(Request $request){

        $check = $this->UserDB->getUserBynameUserandRole($request, 3);

        if(!empty($check)){

            Session::flash('Data Sudah Ada');

        }else{

            $user = $this->UserDB->createUser($request, 3);

            if($user){
                Session::flash('success', 'Disimpan Kedalam Database');
            } else {
                Session::flash('error');
            }

        }

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

    public function GetDetailUser($id){
        
        //get user by id
        //$user = 

            $response['success'] = false;
            $response['message'] = "401 Unauthorized";

            //$result = $this->UserDB->getUserByIdUser($request->id_user);

            // if(!empty($result)){
            
            //     $response['success'] = true;
            //     $response['message'] = "200 Ok";
            //     $response['data'] = $result;
            
            // }
    }

}

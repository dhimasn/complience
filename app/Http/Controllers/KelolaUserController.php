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

    public function store3(Request $request){

        //update database
        $user = $this->UserDB->updateDataUser($request);

        if($user){
            Session::flash('success', 'Disimpan Kedalam Database');
        } else {
            Session::flash('error');
        }

        return redirect()->route('user.index');

    }

    public function GetDetailUser($username){
        $user = $this->UserDB->getUserByUserName($username);
        return view('pages.user.detail', compact('user'));
    }

    public function updateUser($username){
        $listLab = null;
        $user = $this->UserDB->getUserByUserName($username);
        if(!empty($user->id_lab)){
            $listLab = $this->UserDB->getListLabRole();
        }
        return view('pages.user.update', compact('user','listLab'));
    }

    public function deleteUser(Request $request){
        //delete database
        //$user = $this->UserDB->updateDataUser($request);

        if($user){
            Session::flash('success', 'Disimpan Kedalam Database');
        } else {
            Session::flash('error');
        }

        return redirect()->route('user.index');
    }

}

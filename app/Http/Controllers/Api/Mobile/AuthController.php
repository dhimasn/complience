<?php

namespace App\Http\Controllers\Api\Mobile;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
// use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(Request $request){
        if(\Auth::attempt(['email' => $request->username, 'password' => $request->password, 'id_user_role' => 2])){ 
            $user = \Auth::user(); 
            $response['success'] = true;
            $response['message'] = "200 OK";
            $response['token'] =  $user->createToken('MyApp')->accessToken; 
            $response['data'] =  array(
                'id_user' => $user->id,
                'nama' => $user->name,
                'jabatan' => $user->role_user->category_user
            );
            return response()->json($response, 200);
        } 
        else{ 
            $response['success'] = false;
            $response['message'] = "401 Unauthorized";
            return response()->json($response, 200);
        } 
    }
}

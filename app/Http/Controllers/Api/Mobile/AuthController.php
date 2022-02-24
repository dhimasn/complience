<?php

namespace App\Http\Controllers\Api\Mobile;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
// use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(Request $request){
        if(\Auth::attempt(['name' => $request->username, 'password' => $request->password])){ 
            $user = \Auth::user(); 
            $response['success'] = true;
            $response['message'] = "200 OK";
            $response['token'] =  $user->createToken('MyApp')->accessToken; 
            $response['data'] =  array(
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

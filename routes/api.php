<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::post('login', 'Api\Mobile\AuthController@login');

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//get login 
Route::post('/login_process','LoginController@LoginProcess');

//form inspeksi 
//Route::get('/form_inspeksi/get/role','FormInspeksiController@GetAll');
//Route::post('/form_inspeksi/post','FormInspeksiController@PostFormOne');

//form inspeksi get role
//Route::get('/form_inspeksi_lab/get/role','FormInspeksiLabController@GetAll');
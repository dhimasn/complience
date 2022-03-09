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

//get login 
Route::post('login', 'Api\Mobile\AuthController@login');

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//form inspeksi, kelola uji petik inspeksi dan visual 
Route::post('/form_inspeksi/get/role','FormInspeksiController@GetbyRole');
Route::post('/form_inspeksi/get/roles','FormInspeksiController@GetbyRoles');
Route::post('/form_inspeksi/post','FormInspeksiController@PostFormOne');
Route::post('/form_inspeksi/delete/{id_product}','FormInspeksiController@DeleteByIdProduct');
Route::post('/form_inspeksi/get/list','FormInspeksiController@GetList');

//kelola form input

//form inspeksi lab , kelola data pengujian laboratorium
//Route::get('/form_inspeksi_lab/get/role','FormInspeksiLabController@GetbyRole');
//Route::post('/form_inspeksi_lab/post','FormInspeksiLabController@PostFormOne');
//Route::post('/form_inspeksi_lab/delete/{id_product}','FormInspeksiLabController@DeleteByIdProduct');

//kelola form input lab

//kelola user

//kelola data high risk

//menampilkan dashboard

//menampilkan master data

//mengenerate berita





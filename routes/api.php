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
Route::post('/form_inspeksi/post/one','FormInspeksiController@PostFormOne');
Route::post('/form_inspeksi/post/uji_petik','FormInspeksiController@PostFormOnePetik');
Route::get('/form_inspeksi/delete','FormInspeksiController@DeleteByIdProduct');
Route::get('/form_inspeksi/get/list','FormInspeksiController@GetList');

//form inspeksi lab , kelola data pengujian laboratorium
Route::get('/form_inspeksi_lab/get/role','FormInspeksiLabController@GetbyRole');
Route::get('/form_inspeksi_lab/get/roles','FormInspeksiLabController@GetbyRoles');
Route::post('/form_inspeksi_lab/post/two','FormInspeksiLabController@PostFormTwo');
Route::post('/form_inspeksi_lab/post/three','FormInspeksiLabController@PostFormThree');
Route::post('/form_inspeksi_lab/post/four','FormInspeksiLabController@PostFormFour');
Route::post('/form_inspeksi_lab/delete/{id_product}','FormInspeksiLabController@DeleteByIdProduct');


//kelola form

//kelola user

//kelola data high risk

//menampilkan dashboard

//menampilkan master data

//mengenerate berita





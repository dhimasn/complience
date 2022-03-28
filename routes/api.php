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
Route::post('login', 'AuthController@login');
Route::group(['namespace' => 'Api'], function () { // Api Controller
    Route::group(['namespace' => 'Mobile', 'prefix' => 'mobile', 'middleware' => 'auth:api'], function () { // logged only api
        
        Route::post('sync-product', 'ProductController@getAllProduct');
    });
});


// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

//kelola form
//form inspeksi, kelola uji petik inspeksi dan visual (formulir 1) 
Route::post('/form_1/get/role','FormSatuController@GetbyRole');
Route::post('/form_1/get/roles','FormSatuController@GetbyRoles');
Route::post('/form_1/post/one','FormSatuController@PostFormOne');
Route::post('/form_1/post/uji_petik','FormSatuController@PostFormOnePetik');
Route::get('/form_1/delete','FormSatuController@DeleteByIdProduct');
Route::get('/form_1/get/list','FormSatuController@GetList');
Route::get('/form_1/get/detail','FormSatuController@GetDetail');

//formulir untuk uji khusus/round robin testing (formulir 4)
Route::get('/form_4/get/role','FormEmpatController@GetbyRole');
Route::get('/form_4/get/roles','FormEmpatController@GetbyRoles');
Route::post('/form_4/post/four','FormEmpatController@PostFormFour');
Route::post('/form_4/delete','FormEmpatController@DeleteByIdProduct');

//formulir inspeksi lab, kelola data pengujian laboratorium (fomulir 2)
Route::get('/form_2/get/role','FormDuaController@GetbyRole');
Route::get('/form_2/get/roles','FormDuaController@GetbyRoles');
Route::post('/form_2/post/two','FormDuaController@PostFormTwo');
Route::post('/form_2/delete','FormDuaController@DeleteByIdProduct');

//fomulir untuk uji petik laboratorium (formulir 3)
Route::get('/form_3/get/role','FormTigaController@GetbyRole');
Route::get('/form_3/get/roles','FormTigaController@GetbyRoles');
Route::post('/form_3/post/three','FormTigaController@PostFormThree');
Route::post('/form_3/delete','FormTigaController@DeleteByIdProduct');

//kelola pertanyaan formulir  
Route::get('/form/create','KelolaFormController@createForm'); //add
Route::get('/form/update','KelolaFormController@updateForm'); //edit
Route::get('/form/delete','KelolaFormController@deleteForm'); //delete

//kelola user
Route::post('/user/create','KelolaUserController@createUser'); //add
Route::post('/user/update','KelolaUserController@updateUser'); //edit
Route::post('/user/delete','KelolaUserController@deleteUser'); //delete
Route::get('/user/get/list','KelolaUserController@GetListUser');  //detail
Route::get('/user/get/detail','KelolaUserController@GetDetailUser'); //list

//menampilkan dashboard

//menampilkan master data

//mengenerate berita

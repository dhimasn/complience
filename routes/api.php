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

Route::group(['namespace' => 'Mobile', 'prefix' => 'mobile', /*'middleware' => 'auth:api'*/ ], function () { // logged only api
        
        Route::post('sync-product', 'ProductController@getAllProduct');

        Route::group(['namespace' => 'Formulir', 'prefix' => 'formulir'], function () {

            Route::post('/get/form','FormSatuController@GetForm');
            Route::post('/post/one','FormSatuController@PostData');
            Route::get('/delete','FormSatuController@DeleteByIdProduct');
            Route::get('/get/list','FormSatuController@GetList');
            Route::get('/get/detail','FormSatuController@GetDetail');
            
        });

    });

});


// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

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

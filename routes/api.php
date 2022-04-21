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

Route::group(['namespace' => 'Api'], function () { // Api Controller

Route::group(['namespace' => 'Mobile', 'prefix' => 'mobile', /*'middleware' => 'auth:api'*/ ], function () { // logged only api
        
        Route::post('sync-product', 'ProductController@getAllProduct');

        Route::group(['namespace' => 'Formulir', 'prefix' => 'formulir'], function () {

            Route::post('/get/form','FormSatuController@GetForm');
            Route::post('/post/one','FormSatuController@PostData');
            Route::post('/post/uji_petik','FormSatuController@PostDataPetik');
            Route::get('/get/list','FormSatuController@GetList');
            Route::get('/get/list/petik','FormSatuController@GetListPetik');
            Route::get('/get/detail','FormSatuController@GetDetail');
            Route::get('/get/detail/petik','FormSatuController@GetDetailPetik');
            
        });

    });

});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
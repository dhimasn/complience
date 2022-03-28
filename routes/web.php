<?php

use App\Helpers\ApiHelper;
use App\Helpers\ProductHelper;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::group(['namespace' => 'Formulir'], function () { // Formulir Folder Controller
    Route::get('formulir-3', 'FormTigaController@index')->name('form3.index');
    Route::get('formulir-3/form', 'FormTigaController@form')->name('form3.form');

    Route::get('formulir-4', 'RoundRobinController@index')->name('form4');
    Route::post('formulir-4/store', 'RoundRobinController@store')->name('formulir4.store');

    Route::get('uji-petik', 'UjiPetikController@index')->name('ujipetik.index');
    Route::get('uji-petik/form', 'UjiPetikController@form')->name('ujipetik.form');
});

Route::get('/', function () {
    return view('pages.lab.index');
});

Auth::routes(['register' => false]);

Route::get('/home', 'HomeController@index')->name('home');

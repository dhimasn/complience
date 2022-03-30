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
Route::get('/', function () {
    return view('pages.lab.index');
});
Route::get('pengawasan', 'PengawasanController@index')->name('pengawasan.index');

Route::group(['namespace' => 'Formulir'], function () { // Formulir Folder Controller
    Route::get('formulir-2', 'FormDuaController@index')->name('form2.index');
    
    Route::get('formulir-3', 'FormTigaController@index')->name('form3.index');
    Route::get('formulir-3/form', 'FormTigaController@form')->name('form3.form');

    Route::get('formulir-4/form', 'FormEmpatController@form')->name('form4.form');
    Route::post('formulir-4/store', 'FormEmpatController@store')->name('formulir4.store');

    Route::get('uji-petik', 'UjiPetikController@index')->name('ujipetik.index');
    Route::get('uji-petik/form', 'UjiPetikController@form')->name('ujipetik.form');

    Route::get('round-robin', 'RoundRobinController@index')->name('roundrobin.index');
    Route::get('round-robin/form', 'RoundRobinController@form')->name('roundrobin.form');
});

Auth::routes(['register' => false]);

Route::get('/home', 'HomeController@index')->name('home');

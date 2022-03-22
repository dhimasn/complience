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
    Route::get('/formulir-4', 'RoundRobinController@index')->name('form4');
    Route::post('/formulir-4/store', 'RoundRobinController@store')->name('formulir4.store');
});

Route::get('/', function () {
    return view('pages.lab.index');
});

Auth::routes(['register' => false]);

Route::get('/home', 'HomeController@index')->name('home');

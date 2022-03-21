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

Route::get('/lab', function () {
    return view('pages.lab.index');
});
Route::get('/formulir-4', function () {
    return view('pages.formulir4.index');
});

Auth::routes(['register' => false]);

Route::get('/home', 'HomeController@index')->name('home');

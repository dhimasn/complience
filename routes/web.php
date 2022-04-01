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
Route::get('/', 'DashboardController@index')->name('dashboard.index');

Route::get('lab', 'LabController@index')->name('lab.index');

Route::get('pengawasan', 'PengawasanController@index')->name('pengawasan.index');
Route::get('pengawasan/pemilihan-lab-uji', 'PengawasanController@pemilihanLabUji')->name('pengawasan.pemilihanlabuji');
Route::get('pengawasan/pemilihan-lab-uji/detail', 'PengawasanController@formPemilihanLabUji')->name('pengawasan.pemilihanlabuji.detail');
Route::post('pengawasan/pemilihan-lab-uji/store', 'PengawasanController@storePemilihanLabUji')->name('pengawasan.pemilihanlabuji.store');

Route::group(['prefix' => 'data-master'], function () { 
    Route::get('produk', 'MasterDataController@produk')->name('masterdata.produk');
    Route::get('complience', 'MasterDataController@complience')->name('masterdata.complience');
    Route::get('complience/detail', 'MasterDataController@detailComplience')->name('masterdata.detailcomplience');
});
Route::group(['namespace' => 'Formulir'], function () { // Formulir Folder Controller
    Route::get('formulir-2', 'FormDuaController@index')->name('form2.index');
    
    Route::get('formulir-3', 'FormTigaController@index')->name('form3.index');
    Route::get('formulir-3/round-robin', 'FormTigaController@roundRobin')->name('form3.roundrobin');
    Route::get('formulir-3/uji-petik', 'FormTigaController@ujiPetik')->name('form3.ujipetik');
    Route::get('formulir-3/form/{record_id}', 'FormTigaController@form')->name('form3.form');
    Route::post('formulir-3/store', 'FormTigaController@store')->name('form3.store');

    Route::get('formulir-4/pilih-produk', 'FormEmpatController@pilihProduk')->name('form4.pilihproduk');
    Route::get('formulir-4/form', 'FormEmpatController@form')->name('form4.form');
    Route::post('formulir-4/store', 'FormEmpatController@store')->name('formulir4.store');

    Route::get('uji-petik', 'UjiPetikController@index')->name('ujipetik.index');
    Route::get('uji-petik/form/{record_id}', 'UjiPetikController@form')->name('ujipetik.form');
    Route::post('uji-petik/store', 'UjiPetikController@store')->name('ujipetik.store');

    Route::get('round-robin', 'RoundRobinController@index')->name('roundrobin.index');
    Route::get('round-robin/form/{record_id}', 'RoundRobinController@form')->name('roundrobin.form');
    Route::post('round-robin/store', 'RoundRobinController@store')->name('roundrobin.store');
});

Auth::routes(['register' => false]);

Route::get('/home', 'HomeController@index')->name('home');

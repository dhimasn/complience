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
Route::group(['middleware' => 'auth:web'], function () { 

    Route::get('/', 'DashboardController@index')->name('dashboard.index');

    Route::get('high-risk','HighRiskController@index')->name('highrisk.index');

    Route::get('lab', 'LabController@index')->name('lab.index');

    // Route::get('pengawasan', 'PengawasanController@index')->name('pengawasan.index');
    Route::get('pengawasan/pemilihan-lab-uji', 'PengawasanController@pemilihanLabUji')->name('pengawasan.pemilihanlabuji');
    Route::get('pengawasan/pemilihan-lab-uji/detail/{record_id}', 'PengawasanController@formPemilihanLabUji')->name('pengawasan.pemilihanlabuji.detail');
    Route::post('pengawasan/pemilihan-lab-uji/store', 'PengawasanController@storePemilihanLabUji')->name('pengawasan.pemilihanlabuji.store');

    Route::group(['prefix' => 'data-master'], function () { 
        Route::get('produk', 'MasterDataController@produk')->name('masterdata.produk');
        Route::get('complience', 'MasterDataController@complience')->name('masterdata.complience');
        Route::get('complience/detail', 'MasterDataController@detailComplience')->name('masterdata.detailcomplience');
        Route::group(['namespace' => 'MasterData'], function () {
            Route::get('inspeksi-visual', 'InspeksiVisualController@index')->name('masterdata.inspeksi_visual');
            Route::get('inspeksi-visual/detail{record_id}', 'InspeksiVisualController@detail')->name('masterdata.inspeksi_visual.detail');
            Route::post('inspeksi-visual/detail{record_id}', 'InspeksiVisualController@simpan')->name('masterdata.inspeksi_visual.simpan');

            Route::get('uji-petik', 'UjiPetikController@index')->name('masterdata.uji_petik');
            Route::get('uji-petik/detail/{record_id}', 'UjiPetikController@detail')->name('masterdata.uji_petik.detail');

            Route::get('round-robin', 'RoundRobinController@index')->name('masterdata.roundrobin');
            Route::get('round-robin/detail/{record_id}', 'RoundRobinController@detail')->name('masterdata.roundrobin.detail');
            
            Route::get('pengujian-ulang', 'PengujianUlangController@index')->name('masterdata.pengujian_ulang');
            Route::get('pengujian-ulang/detail/{record_id}', 'PengujianUlangController@detail')->name('masterdata.pengujian_ulang.detail');
            
            Route::get('pengujian-lainnya', 'PengujianLainnyaController@index')->name('masterdata.pengujian_lainnya');
            Route::get('pengujian-lainnya/detail/{record_id}', 'PengujianLainnyaController@detail')->name('masterdata.pengujian_lainnya.detail');
        });
    });

    Route::group(['namespace' => 'Formulir'], function () { // Formulir Folder Controller
        Route::get('formulir-2', 'FormDuaController@index')->name('form2.index');
        
        Route::get('formulir-3', 'FormTigaController@index')->name('form3.index');
        // Route::get('formulir-3/round-robin', 'FormTigaController@roundRobin')->name('form3.roundrobin');
        // Route::get('formulir-3/uji-petik', 'FormTigaController@ujiPetik')->name('form3.ujipetik');
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

    //kelola user
    Route::get('user','KelolaUserController@index')->name('user.index');
    Route::get('/user/create/pengawasan','KelolaUserController@formPengawasan')->name('user.pengawasan');
    Route::get('/user/create/lab','KelolaUserController@formLaboratorium')->name('user.lab');
    Route::post('/user/store','KelolaUserController@store')->name('user.store');
    Route::post('/user/store2','KelolaUserController@store2')->name('user.store2');
    Route::post('/user/store3','KelolaUserController@store3')->name('user.store3');   
    Route::get('/user/pilih','KelolaUserController@pilihUser')->name('user.pilih');  
    Route::get('/user/detail/{record_id}','KelolaUserController@GetDetailUser')->name('user.detail');
    Route::get('/user/update/{record_id}','KelolaUserController@updateUser')->name('user.update');  
    Route::get('/user/delete/{record_id}','KelolaUserController@deleteUser')->name('user.delete');

    //kelola lab
    Route::get('lab','KelolaLabUjiController@index')->name('laboratorium.index');
    Route::get('/lab/create/lab','KelolaLabUjiController@formLaboratorium')->name('laboratorium.add');
    Route::post('/lab/store','KelolaLabUjiController@store')->name('laboratorium.store');  
    Route::post('/lab/store2','KelolaLabUjiController@store2')->name('laboratorium.store2');
    Route::get('/lab/update/{record_id}','KelolaLabUjiController@update')->name('laboratorium.update');  
    Route::get('/lab/delete/{record_id}','KelolaLabUjiController@delete')->name('laboratorium.delete');

});

// Route::get('/home', 'HomeController@index')->name('home');
Auth::routes(['register' => false]);

Route::get('/home', 'HomeController@index')->name('home');

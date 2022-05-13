<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('layouts.master', function($view)
        {
            $routeDashboard = array('dashboard.index','dashboard.global');
            $routeListFormulir = array('pengawasan.pemilihanlabuji','form4.pilihproduk','form2.index','form3.index');
            $routeListPendataan = array('pengawasan.pemilihanlabuji','form4.pilihproduk');
            $routeListMaster = array('masterdata.inspeksi_visual','masterdata.uji_petik','masterdata.roundrobin','masterdata.pengujian_ulang','masterdata.pengujian_lainnya','masterdata.produk','laboratorium.index');
            $routeListLab = array('form2.index','form3.index');
            $result['routeDashboard'] = $routeDashboard;
            $result['routeListFormulir'] = $routeListFormulir;
            $result['routeListPendataan'] = $routeListPendataan;
            $result['routeListLab'] = $routeListLab;
            $result['routeListMaster'] = $routeListMaster;
            $view->with('result', $result);
        });
    }
}

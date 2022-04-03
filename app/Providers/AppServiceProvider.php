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
            $routeListFormulir = array('pengawasan.pemilihanlabuji','form4.pilihproduk','form2.index','form3.index');
            $routeListPendataan = array('pengawasan.pemilihanlabuji','form4.pilihproduk');
            $routeListLab = array('form2.index','form3.index');
            $result['routeListFormulir'] = $routeListFormulir;
            $result['routeListPendataan'] = $routeListPendataan;
            $result['routeListLab'] = $routeListLab;
            $view->with('result', $result);
        });
    }
}

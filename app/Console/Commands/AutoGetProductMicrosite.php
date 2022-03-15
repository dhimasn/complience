<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Helpers\ApiHelper;
use Illuminate\Support\Facades\Cache;

class AutoGetProductMicrosite extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'getproduct:microsite';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Auto get product microsite';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        try {
            set_time_limit(0);
            $api_helper = new ApiHelper();
            $header[] = 'Authorization:Basic ' . env('SECRET_KEY_MICROSITE');
            $products = json_decode($api_helper->respApi(env('URL_GET_PRODUCT_MICROSITE'), $header));
            $insert = array();
            foreach ($products->data as $product) {
                $insert[] = array(
                    'id_data_produk' => $product->id_product,
                    'id_category' => $product->id_category,
                    'id_perusahaan' => $product->id_perusahaan,
                    'id_user' => $product->id_user,
                    'id_lspro' => $product->id_lspro,
                    'id_field' => $product->id_field,
                    'field_value' => $product->field_value,
                );
            }
            Cache::put('product_microsite', json_encode($insert));
            foreach (array_chunk($insert, 1000) as $data) {
                $result = \DB::table('data_produk_cmp')->insert($data);
            }
            \Log::channel('cron')->info('[SUCCESS] AutoGetProductMicrosite');
        } catch (\Exception $e) {
            \Log::channel('cron')->info('[FAILED] AutoGetProductMicrosite');
            report($e);
        }
        return 0;
    }
}

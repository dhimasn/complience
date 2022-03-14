<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Helpers\ApiHelper;

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
        // try{
        //     $api_helper = new ApiHelper();
        //     $header = array(
        //         'Authorization' => 'Basic '.env('AIMTnWknHpvjr74uv88UPtaDghA2G8/VAGrCljd+Pf8=')
        //     );
        //     $params = array(
        //         'slug' => 'pengondisi-udara-ac',
        //     );
        //     $products = json_decode($api_helper->respApi(env('URL_GET_PRODUCT_MICROSITE'), $header, $params));
        //     foreach ($products as $product) {
                
        //     }
        //     if($result){
        //         \Log::channel('cron')->info('[SUCCESS] AutoGetProductMicrosite');
        //     }else{
        //         \Log::channel('cron')->info('[FAILED] AutoGetProductMicrosite');
        //     }
        // }catch(\Exception $e){

        // }
        // return 0;
    }
}

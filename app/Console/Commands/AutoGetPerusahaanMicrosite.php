<?php

namespace App\Console\Commands;

use App\Helpers\ApiHelper;
use Illuminate\Console\Command;

class AutoGetPerusahaanMicrosite extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'getperusahaan:microsite';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

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
            $header[] = '';
            $body['token'] = env('SECRET_KEY_MICROSITE');
            $perusahaans = json_decode($api_helper->respApi(env('URL_GET_PERUSAHAAN_MICROSITE'), $header, $body));
            $insert = array();
            foreach ($perusahaans as $perusahaan) {
                $insert[] = array(
                    'id_perusahaan' => $perusahaan->id_perusahaan,
                    'nama_perusahaan' => $perusahaan->nama_perusahaan,
                    'slug' => $perusahaan->slug,
                    'alamat' => $perusahaan->alamat,
                    'no_telp' => $perusahaan->no_telp,
                    'email' => $perusahaan->email,
                );
            }
            \DB::table('perusahaans')->truncate();
            foreach (array_chunk($insert, 1000) as $data) {
                $result = \DB::table('perusahaans')->insert($data);
            }
            \Log::channel('cron')->info('[SUCCESS] AutoGetPerusahaanMicrosite');
        } catch (\Exception $e) {
            \Log::channel('cron')->info('[FAILED] AutoGetPerusahaanMicrosite');
            report($e);
        }
        return 0;
    }
}

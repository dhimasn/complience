<?php

namespace App\Console\Commands;

use App\Http\Controllers\HighRiskController;
use Illuminate\Console\Command;

class AutoGetHighriskMicrosite extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'gethighrisk:microsite';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Auto get generate highrisk';

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
            $highrisk = new HighRiskController();
            $highrisk->sync();
            \Log::channel('cron')->info('[SUCCESS] AutoGetHighriskMicrosite');
        } catch (\Exception $e) {
            \Log::channel('cron')->info('[FAILED] AutoGetHighriskMicrosite');
            report($e);
        }
        return 0;
    }
}

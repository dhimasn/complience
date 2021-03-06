<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        Commands\AutoGetProductMicrosite::class,
        Commands\AutoGetPerusahaanMicrosite::class,
        Commands\AutoGetHighriskMicrosite::class
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        $schedule->command('getproduct:microsite')
        // ->hourly();
        ->cron('* * * * *');
        $schedule->command('getperusahaan:microsite')
        // ->hourly();
        ->cron('* * * * *');
        $schedule->command('gethighrisk:microsite')
        // ->hourly();
        ->cron('* * * * *');
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}

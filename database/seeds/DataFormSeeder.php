<?php

use Illuminate\Database\Seeder;
use App\Helpers\GeneralHelper;

class DataFormSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $path = base_path("database/csv/data_form.csv");
        $provinces = GeneralHelper::csvToArray($path);
        \DB::table('form_data')->insert($provinces);
    }
}

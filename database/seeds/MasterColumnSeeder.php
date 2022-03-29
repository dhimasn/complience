<?php

use App\Helpers\GeneralHelper;
use Illuminate\Database\Seeder;

class MasterColumnSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $path = base_path("database\csv\master_column.csv");
        $provinces = GeneralHelper::csvToArray($path);
        \DB::table('master_column')->insert($provinces);
    }
}

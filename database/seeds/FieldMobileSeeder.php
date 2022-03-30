<?php

use App\Helpers\GeneralHelper;
use Illuminate\Database\Seeder;

class FieldMobileSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $path = base_path("database/csv/mobile_field.csv");
        $provinces = GeneralHelper::csvToArray($path);
        \DB::table('field_mobile')->insert($provinces);
    }
}

<?php

use App\Helpers\GeneralHelper;
use Illuminate\Database\Seeder;

class FormFormulir4Seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $path = base_path("database/csv/form_formulir4.csv");
        $provinces = GeneralHelper::csvToArray($path);
        \DB::table('form_formulir4s')->insert($provinces);
    }
}

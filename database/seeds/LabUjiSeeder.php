<?php

use App\Helpers\GeneralHelper;
use Illuminate\Database\Seeder;

class LabUjiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('lab_ujis')->insert([
            [
                'nama' => 'Qualis',
                'record_id' => GeneralHelper::generateRecordId(),
            ],
            [
                'nama' => 'TUV Rheinland',
                'record_id' => GeneralHelper::generateRecordId(),
            ],
            [
                'nama' => 'B2TkE-BRIN',
                'record_id' => GeneralHelper::generateRecordId(),
            ],
            [
                'nama' => 'B4T-Kemenperin',
                'record_id' => GeneralHelper::generateRecordId()
            ],
        ]);
    }
}

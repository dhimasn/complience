<?php

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
            ],
            [
                'nama' => 'TUV Rheinland',
            ],
            [
                'nama' => 'B2TkE-BRIN',
            ],
            [
                'nama' => 'B4T-Kemenperin',
            ],
        ]);
    }
}

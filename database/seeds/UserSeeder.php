<?php

use App\Helpers\GeneralHelper;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('users')->insert([
            [
                'username' => "superadmin",
                'name' => "super budi",
                'record_id' => GeneralHelper::generateRecordId(),
                'id_user_role' => 1,
                'id_lab' => null,
                'email' => "admin@mail.com",
                'password' => bcrypt("1234aa"),
            ],
            [
                'username' => "tim pengawas",
                'name' => "Santoso",
                'record_id' => GeneralHelper::generateRecordId(),
                'id_user_role' => 2,
                'id_lab' => null,
                'email' => "pengawas@mail.com",
                'password' => bcrypt("1234aa"), 
            ],
            [
                'username' => "labstaff",
                'name' => "andy",
                'record_id' => GeneralHelper::generateRecordId(),
                'id_user_role' => 3,
                'id_lab' => 3,
                'email' => "lab@mail.com",
                'password' => bcrypt("1234aa"), 
            ]

        ]);
    }
}

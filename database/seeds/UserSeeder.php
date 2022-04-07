<?php

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
                'id_user_role' => 1,
                'email' => "budisantoso@gmail.com",
                'password' => bcrypt("1234"),
            ],
            [
                'username' => "tim pengawas",
                'name' => "Santoso",
                'id_user_role' => 2,
                'email' => "santoso@gmail.com",
                'password' => bcrypt("1234"), 
            ],
            [
                'username' => "labstaff",
                'name' => "andy",
                'id_user_role' => 3,
                'id_lab' => 3,
                'email' => "andy@gmail.com",
                'password' => bcrypt("1234"), 
            ]

        ]);
    }
}

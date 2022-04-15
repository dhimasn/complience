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
                'id_lab' => null,
                'email' => "admin@mail.com",
                'password' => bcrypt("1234aa"),
            ],
            [
                'username' => "tim pengawas",
                'name' => "Santoso",
                'id_user_role' => 2,
                'id_lab' => null,
                'email' => "pengawas@mail.com",
                'password' => bcrypt("1234aa"), 
            ],
            [
                'username' => "labstaff",
                'name' => "andy",
                'id_user_role' => 3,
                'id_lab' => 3,
                'email' => "lab@mail.com",
                'password' => bcrypt("1234aa"), 
            ]

        ]);
    }
}

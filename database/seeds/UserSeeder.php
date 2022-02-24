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
            'username' => "budi",
            'name' => "Budi Santoso",
            'id_user_role' => 1,
            'email' => "budisantoso@gmail.com",
            'password' => bcrypt("1234"),
        ]);
    }
}

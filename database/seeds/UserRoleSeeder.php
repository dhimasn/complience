<?php

use Illuminate\Database\Seeder;

class UserRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('user_roles')->insert([
            [
                'category_user' => "Super Admin"
            ],
            [
                'category_user' => "Pengawas"
            ],
            [
                'category_user' => "Laboratiorum"
            ]
        ]);
    }
}

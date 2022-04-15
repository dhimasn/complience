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
                'id' => 1,
                'category_user' => "Super Admin"
            ],
            [
                'id' => 2,
                'category_user' => "Pengawas"
            ],
            [
                'id' => 3,
                'category_user' => "Laboratorium"
            ]
        ]);
    }
}

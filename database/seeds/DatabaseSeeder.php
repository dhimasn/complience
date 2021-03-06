<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UserSeeder::class);
        $this->call(UserRoleSeeder::class);
        $this->call(DataFormSeeder::class);
        $this->call(FieldMobileSeeder::class);
        $this->call(MasterColumnSeeder::class);
        $this->call(ProductSeeder::class);
        $this->call(LabUjiSeeder::class);
        $this->call(FromCategorySeeder::class);
        $this->call(MasterHighRiskSeeder::class);
        $this->call(UserRoleSeeder::class);
        $this->call(UserSeeder::class);    
        \Artisan::call('passport:install');  
    }
}

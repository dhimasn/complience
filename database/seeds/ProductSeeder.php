<?php

use App\Helpers\GeneralHelper;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $path = base_path("database/csv/products.csv");
        $provinces = GeneralHelper::csvToArray($path, "|");
        \DB::transaction(function() use($provinces) {
            $collection = collect($provinces);
            $parts = $collection->chunk(1000);
            foreach ($parts as $subset) {
                \DB::table('products')->insert($subset->toArray());
            }
        });
    }
}

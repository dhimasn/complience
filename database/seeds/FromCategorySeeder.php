<?php

use Illuminate\Database\Seeder;

class FromCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('form_categories')->insert([
            [
                'category_product_id' => 2,
                'title' => 'Cek Fisik, Unit Indoor',
                'jenis_form' => 2,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Cek Fisik, Unit Outdoor',
                'jenis_form' => 2,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Hasil Final Cek Fisik',
                'jenis_form' => 2,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Data Nameplate Produk',
                'jenis_form' => 3,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Hasil Pengujian',
                'jenis_form' => 3,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Rekap Hasil Pengujian',
                'jenis_form' => 3,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Pemeriksaan Visual',
                'jenis_form' => 4,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Cek Fisik, Unit Indoor',
                'jenis_form' => 5,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Cek Fisik, Unit Outdoor',
                'jenis_form' => 5,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Pengecekan Pra-Pengujian',
                'jenis_form' => 5,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Hasil Final Cek Fisik',
                'jenis_form' => 5,
            ],
        ]);
    }
}

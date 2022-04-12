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
                'title' => 'Informasi Umum  (form 1)', // 1
                'jenis_form' => 1,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Data Ritel', // 2
                'jenis_form' => 1,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Pengalaman terhadap Label Tanda Hemat Energi', // 3
                'jenis_form' => 1,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Detail Produk',
                'jenis_form' => 1,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Pemeriksaan visual + entri data ketidaksesuaian (3) - LABEL LAMA',
                'jenis_form' => 1,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Compliance LTHE',
                'jenis_form' => 1,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Aktifkan Rekaman Sampel Uji Petik',
                'jenis_form' => 1,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Compliance Regulasi Lainnya',
                'jenis_form' => 1,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Pemeriksaan visual + entri data ketidaksesuaian (3) - LABEL BARU', // 9
                'jenis_form' => 1,
            ],

            [
                'category_product_id' => 2,
                'title' => 'Cek Fisik, Unit Indoor', // 10
                'jenis_form' => 2,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Cek Fisik, Unit Outdoor',
                'jenis_form' => 2,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Hasil Final Cek Fisik', // 12
                'jenis_form' => 2,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Data Nameplate Produk',
                'jenis_form' => 3,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Hasil Pengujian', // 14
                'jenis_form' => 3,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Rekap Hasil Pengujian',
                'jenis_form' => 3,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Pemeriksaan Visual', // 16
                'jenis_form' => 4,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Cek Fisik, Unit Indoor',
                'jenis_form' => 5,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Cek Fisik, Unit Outdoor', // 18
                'jenis_form' => 5,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Pengecekan Pra-Pengujian',
                'jenis_form' => 5,
            ],
            [
                'category_product_id' => 2,
                'title' => 'Hasil Final Cek Fisik', // 20
                'jenis_form' => 5,
            ],
        ]);
    }
}

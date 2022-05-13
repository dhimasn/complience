<?php

use Illuminate\Database\Seeder;

class MasterHighRiskSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //type: 1.micorsite, 2.inspection, 3.other
        \DB::table('master_high_risk')->insert([
            [
                'kriteria' => 'Indeks efisiensi energi mendekati SKEM',
                'variabel_penilaian' => 'EER (Btu/h/W)', // 1
                'nol' => '>8.755',
                'satu' => '>8.7175-8.755',
                'dua' => '>8.605-8.7175',
                'tiga' => '<8.605',
                'notes' => '',
            ],
            [
                'kriteria' => 'Indeks efisiensi energi mendekati SKEM',
                'variabel_penilaian' => 'CSPF (Wh/Wh)', // 1
                'nol' => '>3.25',
                'satu' => '>3.225-3.25',
                'dua' => '>3.15-3.225',
                'tiga' => '<3.225',
                'notes' => '',
            ],
            [
                'kriteria' => 'Merek dengan histori ketidaksesuaian',
                'variabel_penilaian' => 'Nomor SHE dan merek, berdasarkan Master Data Pengawasan, catatan tambahan oleh inspektur', // 1
                'nol' => 'Tidak ada histori ketidaksesuaian',
                'satu' => 'Pelanggaran regulasi terkait bea cukai dan pajak, Pelanggaran hak cipta',
                'dua' => 'Gagal uji petik Ditandai mencurigakan oleh inspektur',
                'tiga' => 'Temuan pengawasan SNI keselamatan',
                'notes' => '',
            ],
            [
                'kriteria' => 'Merek baru atau tidak dikenal',
                'variabel_penilaian' => 'Nomor SHE dan merek, berdasarkan analisis internal, dilakukan tahunan oleh inspektur', // 1
                'nol' => 'Peningkatan jumlah model tidak lebih dari 50% dibandingkan tahun lalu',
                'satu' => 'Peningkatan jumlah model antara 50% dan 100%',
                'dua' => 'Peningkatan jumlah model antara 100% dan 300%',
                'tiga' => 'Temuan pengawasan SNI keselamatan',
                'notes' => '',
            ],
            [
                'kriteria' => 'Merek baru atau tidak dikenal',
                'variabel_penilaian' => 'Nomor SHE dan merek, berdasarkan analisis internal, dilakukan tahunan oleh inspektur', // 1
                'nol' => 'Peningkatan jumlah model tidak lebih dari 50% dibandingkan tahun lalu',
                'satu' => 'Peningkatan jumlah model antara 50% dan 100%',
                'dua' => 'Peningkatan jumlah model antara 100% dan 300%',
                'tiga' => 'Temuan pengawasan SNI keselamatan',
                'notes' => '',
            ]
        ]);
    }
}

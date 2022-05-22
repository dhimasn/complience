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
                'id_kriteria' => 1,
                'kriteria' => 'Indeks efisiensi energi mendekati SKEM',
                'variabel_penilaian' => 'EER (Btu/h/W)', // 1
                'nol' => '>8.755',
                'satu' => '>8.717-8.755',
                'dua' => '>8.605-8.717',
                'tiga' => '<8.605',
            ],
            [
                'id_kriteria' => 2,
                'kriteria' => 'Indeks efisiensi energi mendekati SKEM',
                'variabel_penilaian' => 'CSPF (Wh/Wh)', // 1
                'nol' => '>3.250',
                'satu' => '>3.225-3.250',
                'dua' => '>3.150-3.225',
                'tiga' => '<3.225',
            ],
            [
                'id_kriteria' => 3,
                'kriteria' => 'Merek dengan histori ketidaksesuaian',
                'variabel_penilaian' => 'Nomor SHE dan merek, berdasarkan Master Data Pengawasan, catatan tambahan oleh inspektur', // 3
                'nol' => 'Tidak ada histori ketidaksesuaian',
                'satu' => 'Pelanggaran regulasi terkait bea cukai, pajak, Pelanggaran hak cipta',
                'dua' => 'Gagal uji petik, Ditandai mencurigakan oleh inspektur',
                'tiga' => 'Temuan pengawasan SNI keselamatan',
            ],
            [
                'id_kriteria' => 4,
                'kriteria' => 'Merek baru atau tidak dikenal',
                'variabel_penilaian' => 'Nomor SHE dan merek, berdasarkan analisis internal, dilakukan tahunan oleh inspektur (Peningkatan jumlah model)', // 4
                'nol' => '>50%',
                'satu' => '>50%-100%',
                'dua' => '>100%-300%',
                'tiga' => '>300%',
            ],
            [
                'id_kriteria' => 5,
                'kriteria' => 'Pangsa pasar besar',
                'variabel_penilaian' => 'Jumlah unit produksi/impor tahunan, berdasarkan kapasitas (½, ¾, 1 PK)', // 2
                'nol' => '<15000 unit',
                'satu' =>'>15000-30000 unit',
                'dua' => '>30000-50000 unit',
                'tiga' => '>50000 unit',
            ],
            [
                'id_kriteria' => 6,
                'kriteria' => 'Pangsa pasar besar',
                'variabel_penilaian' => 'Jumlah unit produksi/impor tahunan, berdasarkan kapasitas (½, ¾, 1 PK)', // 2
                'nol' =>'<5000 unit',
                'satu'=>'>5000-10000 unit',
                'dua' =>'>10000-15000 unit',
                'tiga'=>'>15000 unit',
            ]
        ]);
    }
}

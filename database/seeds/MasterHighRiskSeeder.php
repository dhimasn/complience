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
                'variabel_penilaian' => 'Nomor SHE dan merek, berdasarkan analisis internal, dilakukan tahunan oleh inspektur', // 4
                'nol' => 'Peningkatan jumlah model tidak lebih dari 50% dibandingkan tahun lalu',
                'satu' => 'Peningkatan jumlah model antara 50% dan 100%',
                'dua' => 'Peningkatan jumlah model antara 100% dan 300%',
                'tiga' => 'Temuan pengawasan SNI keselamatan',
            ],
            [
                'id_kriteria' => 5,
                'kriteria' => 'Pangsa pasar besar',
                'variabel_penilaian' => 'Jumlah unit produksi/impor tahunan, berdasarkan kapasitas', // 2
                'nol' => '<15,000 unit (½, ¾, 1 PK)',
                'satu' =>'>15,000-30,000 unit (½, ¾, 1 PK) ',
                'dua' => '>30,000-50,000 unit (½, ¾, 1 PK)',
                'tiga' => '>50,000 unit (½, ¾, 1 PK)',
            ],
            [
                'id_kriteria' => 6,
                'kriteria' => 'Pangsa pasar besar',
                'variabel_penilaian' => 'Jumlah unit produksi/impor tahunan, berdasarkan kapasitas', // 2
                'nol' => '<5,000 unit (½, ¾, 1 PK)',
                'satu' =>'>5,000-10,000 unit (½, ¾, 1 PK) ',
                'dua' => '>10,000-15,000 unit (½, ¾, 1 PK)',
                'tiga' => '>15,000 unit (½, ¾, 1 PK)',
            ]
        ]);
    }
}

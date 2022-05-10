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
        \DB::table('users')->insert([
            [
                'high_risk_criteria' => "Just meets MEPS level (ΔEER < 0.225 Btu/h/W)",
                'type' => 1,
            ],
            [
                'high_risk_criteria' => "High CSPF & Low Price Model (5-star models with Actual Price at least 25% lower than Expected Price)",
                'data_target' => 1, 
            ],
            [
                'high_risk_criteria' => "Low Price Model (Price < NN,000,000 IDR)",
                'data_target' => 2, 
            ],
            [
                'high_risk_criteria' => "Product from High Risk Country of Origin",
                'data_target' => 2, 
            ],
            [
                'high_risk_criteria' => "High Market Share reported to DJEBTKE",
                'data_target' => 1, 
            ],
            [
                'high_risk_criteria' => "Flagged in online label checks",
                'data_target' => 3, 
            ],
            [
                'high_risk_criteria' => "Flagged during in-store inspections",
                'data_target' => 2, 
            ],
            [
                'high_risk_criteria' => "Brand with history of non-compliances",
                'data_target' => 3, 
            ],
            [
                'high_risk_criteria' => "New or unknown brand/model relative to previous year",
                'data_target' => 1, 
            ],
            [
                'high_risk_criteria' => "Suspicious product features and specifications",
                'data_target' => 3, 
            ],
            [
                'high_risk_criteria' => "Ambiguity in technical documents / registration application dossier",
                'data_target' => 3, 
            ],
            [
                'high_risk_criteria' => "Received 3rd party complaint(s)",
                'data_target' => 3, 
            ]
        ]);
    }
}

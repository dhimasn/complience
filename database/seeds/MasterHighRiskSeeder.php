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
                'high_risk_criteria' => "Just meets MEPS level (ΔEER < 0.225 Btu/h/W)",
                'type' => 1,
            ],
            [
                'high_risk_criteria' => "High CSPF & Low Price Model (5-star models with Actual Price at least 25% lower than Expected Price)",
                'type' => 1, 
            ],
            [
                'high_risk_criteria' => "Low Price Model (Price < NN,000,000 IDR)",
                'type' => 2, 
            ],
            [
                'high_risk_criteria' => "Product from High Risk Country of Origin",
                'type' => 2, 
            ],
            [
                'high_risk_criteria' => "High Market Share reported to DJEBTKE",
                'type' => 1, 
            ],
            [
                'high_risk_criteria' => "Flagged in online label checks",
                'type' => 3, 
            ],
            [
                'high_risk_criteria' => "Flagged during in-store inspections",
                'type' => 2, 
            ],
            [
                'high_risk_criteria' => "Brand with history of non-compliances",
                'type' => 3, 
            ],
            [
                'high_risk_criteria' => "New or unknown brand/model relative to previous year",
                'type' => 1, 
            ],
            [
                'high_risk_criteria' => "Suspicious product features and specifications",
                'type' => 3, 
            ],
            [
                'high_risk_criteria' => "Ambiguity in technical documents / registration application dossier",
                'type' => 3, 
            ],
            [
                'high_risk_criteria' => "Received 3rd party complaint(s)",
                'type' => 3, 
            ]
        ]);
    }
}

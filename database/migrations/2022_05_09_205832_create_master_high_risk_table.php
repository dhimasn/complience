<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMasterHighRiskTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('master_high_risk', function (Blueprint $table) {
            $table->id();
            $table->string('kriteria');
            $table->string('variabel_penilaian');
            $table->string('nol');
            $table->string('satu');
            $table->string('dua');
            $table->string('tiga');
            $table->string('notes');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('master_high_risk');
    }
}

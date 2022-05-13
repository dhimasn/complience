<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHistoryComplienceHighRiskTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('history_complience_high_risk', function (Blueprint $table) {
            $table->id();
            $table->string('no_she')->nullable();
            $table->string('merek')->nullable();
            $table->string('ketidaksesuaian')->nullable();
            $table->string('lembaga_terkait')->nullable();
            $table->integer('pengawas_id');
            $table->integer('bobot');
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
        Schema::dropIfExists('history_complience_high_risk');
    }
}

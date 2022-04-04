<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFormCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('form_categories', function (Blueprint $table) {
            $table->id();
            $table->integer('category_product_id');
            $table->string('title');
            $table->tinyInteger('jenis_form')->comment("1: Formulir_1 2:Formulir_2(Uji Petik) 3:Formulir_3 4:Formulir_4 5:Formulir_2(RRT)");
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
        Schema::dropIfExists('form_categories');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLokasi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lokasi', function (Blueprint $table) {
            $table->increments('kode_lokasi');
            $table->string('gedung');
            $table->string('lantai');
            $table->string('ruangan');
            $table->string('ket_ruang');
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
        Schema::dropIfExists('lokasi');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBarang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('barang', function (Blueprint $table) {
            $table->string('no');
            $table->string('kode_brg');
            $table->string('nama_brg');
            $table->string('merk_brg');
            $table->string('kondisi_brg');
            $table->string('sumber_dana');
            $table->string('ket_brg');
            $table->string('klmpk_alat');
            $table->string('kode_bidang');
            $table->string('kode_lokasi');
            $table->date('tanggal');
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
        Schema::dropIfExists('barang');
    }
}

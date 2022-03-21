<?php

use Illuminate\Database\Seeder;

class BarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('barang')->insert([
            'no' =>'7.F102.17.9.049.1',
            'kode_brg' => '049',
            'nama_brg' => 'Whiteboard Besar',
            'merk_brg' => '240x120cm',
            'kondisi_brg' =>'kondisi' ,
            'sumber_dana' => 'pak rey',
            'ket_brg' => 'baguus',
            'klmpk_alat' =>'1' ,
            'kode_bidang' => '7',
            'kode_lokasi' =>'F102' ,
            'tanggal' => '29-09-2021',
        ],
    );
    }
}

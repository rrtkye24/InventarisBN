<?php

namespace App\Http\Controllers;
use App\Models\Pinjam;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PinjamController extends Controller
{
    public function index()
    {
       
        $pinjam = DB::table('pinjam')->get();
       
        return view('superadmin.laporanpinjam',['pinjam' => $pinjam]);
    }

    public function tambah(){
        return view('superadmin.pinjambarang');
    }
    public function store(Request $request){
        DB::table('pinjam')->insert([
            'namapeminjam' => $request->namapeminjam,
            'namabarang' => $request->namabarang,
            'merkbarang' => $request->merkbarang,
            'kodelokasi' => $request->kodelokasi,
            'jumlah' => $request->jumlah,
            'tanggal_pinjam' => $request->tanggal_pinjam,
        ]);
        return redirect('/pinjambarang');
    }
    public function destroy($id) {

        DB::table('pinjam')->where('id',$id)->delete();
        return redirect('/laporanpeminjaman');  
    }
}
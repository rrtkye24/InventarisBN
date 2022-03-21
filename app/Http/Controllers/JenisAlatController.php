<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Jenisalat;
class JenisAlatController extends Controller
{
    public function index(){
        $jenis_alat = DB::table('jenis_klmpk_alat')
        ->orderby('id')
        ->paginate(25);
        return view('superadmin.kelompok_alat',['jenis_alat'=>$jenis_alat]);
    }
    public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;
 
    		// mengambil data dari table pegawai sesuai pencarian data
		$jenis_alat= DB::table('jenis_klmpk_alat')
		->where('jk_alat','like',"%".$cari."%")
        ->paginate();
    		// mengirim data pegawai ke view index
		return view('superadmin.kelompok_alat',['jenis_alat' => $jenis_alat]);
 
	}
	public function jenis(){
		$jenis = DB::table('klmpk_alat')->get();
		return view('superadmin.tambahkelompokalat',['jenis' => $jenis]);
	}
	public function store(request $req){

			$ka = $req->input('kelompokalat');
			$kb = $req->input('kodebarang');
			$ja = $req->input('jenisalat');

			$kln = DB::table('jenis_klmpk_alat')
			->insert(['klmpk_alat' => $ka,'kode_brg' => $kb, 'jk_alat' => $ja]);
			return redirect()->route('kelompokalat')->with('success', 'Data Kelompok Alat Berhasil Diatambahkan!');
		}
	}


<?php

namespace App\Http\Controllers;
use Livewire\Component;
use App\Exports\BarangExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\Controller;;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DatabarangnController extends Controller
{
    public function index(request $request){
        $kelompokalat = DB::table('klmpk_alat')->get();
        $lokasi = DB::table('lokasi')->get();
        $barang = DB::table('barang')->orderBy('kode_bidang')->orderby('kode_lokasi')->
        get();
        
        return view('superadmin.databarang', compact('kelompokalat','lokasi','barang'));
    }
    public function indexklmpk(){
        $klmpk_alat = DB::table('klmpk_alat')
        ->groupBy('klmpk_alat')
        ->get();
        return view('superadmin.tambahdata')
        ->with('klmpk_alat', $klmpk_alat);
    }
    public function fetch(Request $req){
        $select = $req->get('select');
        $value - $req->get('value');
        $dependent = $req->get('dependent');
        $data = DB::table('klmpk_alat')
        ->join('jenis_klmpk_alat' , 'klmpk_alat.klmpk_alat' , '=', 'jenis_klmpk_alat.klmpk_alat')
        ->where($select, $value)
        ->groupBy($dependent)
        ->get();
        $output = '<option value="">Select '.ucfirst($dependent).'</option>';
        foreach($data as $row){
            $output .= '<option value="'.$row->$dependent.'">'
            .$row->$depentdent.'</option>';
        }
        echo $output;
    }

    public function cari(Request $request)
	{
		$cari = $request->cari;
		$barang = DB::table('barang')
		->where('nama_brg','like',"%".$cari."%")
		->paginate();

		return view('superadmin.databarang',['barang' => $barang]);
 
	}

    public function tambah(){
        $kelompokalat = DB::table('klmpk_alat')->get();
        $lokasi = DB::table('lokasi')->get();
        $barang = DB::table('barang')->get();

        return view('superadmin.tambahdata', compact('kelompokalat','lokasi','barang'));
    }

    public function store(Request $req){
        $kbd = $req->input('kodebidangbarang');
        $kl = $req->input('kodelokasi');
        $kkl = $req->input('kodekelompokalat');
        $knb = $req->input('kodenamabarang');
        $nb = $req->input('namabarang');
        $merk = $req->input('merek');
        $tgl = $req->input('tanggal');
        $kb = $req->input('kondisi');
        $sd = $req->input('sumberdana');
        $ket = $req->input('ketbarang');
        $tglnew = date('y', strtotime($tgl));
        $kln = DB::table('lokasi')
        ->join('barang','barang.kode_lokasi','=','lokasi.kode_lokasi')
        ->get();
        //mencari urutan barang
        $data = DB::table('barang')->where([
            ['kode_brg', $knb],
            ['klmpk_alat', $kkl],
            ['kode_lokasi', $kl],
            ['nama_brg', $nb]
        ])->count();
        $data += 1; 
        $nomor = str_pad((string)$data, 3, "0", STR_PAD_LEFT); 
        $kode = $kbd.".".$kl.".".$tglnew.".".$kkl.".".$knb.".".$nomor;

        $insert = DB::table('barang')->insert(['no' => $kode, 'kode_brg' => $knb, 'nama_brg' => $nb, 'merk_brg' => $merk, "kondisi_brg" => $kb, "sumber_dana" => $sd,"ket_brg"=>$ket,'klmpk_alat'=>$kkl, 'kode_bidang' => $kbd, 'kode_lokasi' => $kl, 'tanggal' => $tgl]);
        return redirect('tambahdata')->with('success', 'Data Berhasil Tersimpan!');
    }
    public function barang(Request $request){
        $search = $request->input('cari');
        $data_barang = DB::table('barang')->get();
        if($search){ 
         $data_barang =DB::table('barang')->where("nama_brg","LIKE","%$search%")->get();
         }
         else{
         $data_barang = DB::table('barang')->get();
         }
        return view('databarang',['barang' => $data_barang]);
        echo $search;
    }
    public function edit($no)
    {
        $kelompokalat = DB::table('klmpk_alat')->get();
        $lokasi = DB::table('lokasi')->get();
        $barang = DB::table('barang')->get();

        list($kdb, $kl, $ktp,  $kkl, $knb, $kub) = explode('.', $no);
        
        $data = DB::table('barang')->join('bidang_brg', 'bidang_brg.kode_bidang_brg', '=', "barang.kode_bidang")->join('klmpk_alat', 'klmpk_alat.kode_klmpk_alat', '=', 'barang.klmpk_alat')->where('no', $no)->get();
 
        return view ('superadmin.databarang',compact('kelompokalat','lokasi','barang','data'));
        ;
    }
    public function update(Request $req){
        $kodelama = $req->input('idb');
        $kbd = $req->input('kodebidangbarang');
        $kl = $req->input('kodelokasi');
        $kkl = $req->input('kodekelompokalat');
        $knb = $req->input('kodenamabarang');
        $nb = $req->input('namabarang');
        $merk = $req->input('merek');
        $tgl = $req->input('tanggal');
        $kb = $req->input('kondisi');
        $sd = $req->input('sumberdana');
        $ket = $req->input('ketbarang');
        $tglnew = date('y', strtotime($tgl));

        $data = DB::table('barang')->where('kode_brg', $knb)->where('klmpk_alat',$kkl)->count();
        $data += 1;

        $nomor = str_pad((string)$data, 3, "0", STR_PAD_LEFT); 

        $kodebaru = $kbd.".".$kl.".".$tglnew.".".$kkl.".".$knb.".".$nomor;

        $update = DB::table('barang')->where('no', $kodelama)->update(['no' => $kodebaru, 'kode_brg' => $knb, 'nama_brg' => $nb, 'merk_brg' => $merk, "kondisi_brg" => $kb, "sumber_dana" => $sd,"ket_brg"=>$ket,'klmpk_alat'=>$kkl, 'kode_bidang' => $kbd, 'kode_lokasi' => $kl, 'tanggal' => $tgl ]);
 
        return redirect()->route('databarang');
    }
    public function hapus($no)
    {
        $delete = DB::table('barang')->where('no', $no)->delete();
        return redirect('databarang')->with('danger', 'Data Berhasil Dihapus!');
    }
    public function new(){
        $baru=DB::table('barang')->orderby('tanggal','desc')->limit(5)->get();
        $rusak=DB::table('barang')->where('kondisi_brg','like','rusak%')->orderby('tanggal','desc')->limit(5)->get();
        //     dump($rusak);
        return view('superadmin.dash',['new'=>$baru,'rusak'=>$rusak]);
    }
    
    public function brgrusakberat(){
        $brgrusakberat = DB::table('barang')
        ->where('kondisi_brg','like','rusak%')
        ->get();
        $lokasii = DB::table('barang')->where('kondisi_brg','like','rusak%')
        ->join('lokasi','barang.kode_lokasi','lokasi.kode_lokasi')
        ->get();
       
        return view('superadmin.brgrusakberat',compact('brgrusakberat','lokasii'));
    }
    public function deletebrg($no){
        DB::table('barang')->where('no',$no)->delete();
        return redirect('/brgrusakberat');
    }

    public function hps(){
        $hapus=DB::table('barang')->where('kondisi_brg','=','dihapus')->get();
        $lokasi = DB::table('barang')
        ->join('lokasi','barang.kode_lokasi','lokasi.kode_lokasi')
        ->get();
        return view('superadmin.hapusdata',['hapus'=>$hapus,'lokasi'=>$lokasi]);
    }

    public function update_perbaiki($id){
        $brg = DB::table('barang')->where('no', $id)
        ->update(['kondisi_brg' => 'Baik']);

        return redirect()->back();
    }
    public function update_kembali($id){
        $brg = DB::table('barang')->where('no', $id)
        ->update(['kondisi_brg' => 'dihapus']);
        return redirect()->back();
    }

    public function BarangExport() 
{
    return Excel::download(new BarangExport, 'barang.xlsx');
    }

    

}


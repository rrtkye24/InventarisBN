@extends('superadmin.welcome')

@section('superadmin')
<div class="card">
  <div class="card-header">
  <p class="fs-2">Laporan Data Yang Telah Dihapus</p>
  </div>
  <div class="card-body">
  <table class="table">
  <thead>
  <tr>
      <th scope="col">Kode Inventaris</th>
      <th scope="col">Nama Barang</th>
      <th scope="col">Kode Barang</th>
      <th scope="col">Merek Barang</th>
	  <th scope="col">Kondisi Barang</th>
	  <th scope="col">Sumber Dana</th>
      <th scope="col">Jumlah Barang</th>
	  <th scope="col">Keterangan Barang</th>
      <th scope="col">Lokasi</th>
	  <th scope="col">Aksi</th>
    </tr>
  </thead>
  @foreach($hapus as $h)
 <tbody>
 <tr>
      <th scope="col">{{$h->no}}</th>
      <th scope="col">{{$h->nama_brg}}</th>
      <th scope="col">{{$h->kode_brg}}</th>
      <th scope="col">{{$h->merk_brg}}</th>
	  <th scope="col">{{$h->kondisi_brg}}</th>
	  <th scope="col">{{$h->sumber_dana}}</th>
    <th scope="col">{{$h->no}}</th>
	  <th scope="col">{{$h->ket_brg}}</th>
    @foreach($lokasi as $look)
    @endforeach
    <th scope="col">{{$look->ket_ruang}}</th>
    <th>
    <form method="POST" action="{{ route('perbaiki', $h->no) }}">
   @csrf
    <button type="submit" title="Kembalikan" class="btn btn-sm btn-warning" onclick="return confirm('Apakah Barang Ini Sudah Diperbaiki?')">Kembalikan</button>
    </form>
	</th>
 
    </tr>
 </tbody>
 @endforeach
</table>
  </div>
</div>

@endsection
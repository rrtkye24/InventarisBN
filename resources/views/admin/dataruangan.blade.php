@extends('admin.welcome')

@section('admin')
<form class="d-flex" action="/dataruangan/cari" method="GET">
         <input class="form-control me-2" type="text" name="cari" class="form-control" placeholder="Cari ruangan" value="{{ old('cari') }}" >
         <button class="btn btn-dark" type="submit" value="CARI">Cari</button>
      </form>	


<center><p><h1><i class="fas fa-archway me-3"></i>DATA RUANGAN</h1></p>

  <link rel="stylesheet" type="text/css" href="style.css">
<center>
  <table class="table caption-top">
    <thead>
    <tr>
      <th scope="col">Kode</th>
      <th scope="col">Arti Kode</th>
      <th scope="col">Keterangan Ruangan</th>
      <th scope="col">Aksi</th>
    </tr>
  </thead>
  <tbody>
	@foreach($lokasiruang as $lr)
	<tr>
      <td>{{$lr->kode_lokasi}}</td>
      <td>Gedung {{$lr->gedung}} Lantai {{$lr->lantai}} Ruangan {{$lr->ruangan}}</td>
      <td>{{$lr->ket_ruang}}</td>
      <td><a href="{{url('dataruangan/'.$lr->kode_lokasi.'/edit')}}"> <button type="button" class="btn btn-warning btn-sm">Edit</button></a></td>
      <td><a href="{{url('dataruangan/'.$lr->kode_lokasi.'/buka')}}"> <button type="button" class="btn btn-danger btn-sm">Buka</button></a></td>
    </tr>
    </tr>
	@endforeach
  </tbody>
</table>

@php
@endphp

@isset($datalok)
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Data Ruangan</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
	  <form action='{{route("updateruang")}}' method='POST'>
  @csrf
  <div class="mb-3">
      <label for="kodelokasi" class="form-label">Kode Lokasi</label>
      <input type="text" class="form-control" id="kodelokasi" name='kodelokasi' required value='{{$datalok[0]->kode_lokasi}}'>
    </div>
    <div class="mb-3">
    <label for="gedung" class="form-label">Gedung</label>
    <input type="text" class="form-control" id="gedung" required name='gedung' value='{{$datalok[0]->gedung}}'>
  </div>
  <div class="mb-3">
    <label for="lantai" class="form-label">Lantai</label>
    <input type="text" class="form-control" id="lantai" name='lantai' required value='{{$datalok[0]->lantai}}'>
  </div>
  <div class="mb-3">
    <label for="ruangan" class="form-label">Ruangan</label>
    <input type="text" class="form-control" id="ruangan" name='ruangan' required value='{{$datalok[0]->ruangan}}'>
  </div>

  <div class="mb-3">
    <label for="ketruang" class="form-label">Keterangan Ruangan</label>
    <input type="text" class="form-control" id="ketruang" name='ketruang' required value='{{$datalok[0]->ket_ruang}}'>
  </div>
    
  <div class="mb-3 form-check">
  </div>
      </div>
      <div class="modal-footer">
        <input type="hidden" name='idb' value='{{$datalok[0]->kode_lokasi}}'>
        <button type='submit' class="btn btn-primary">Save changes</button>
      </div>
	  </form>
</div>
   @endisset

@isset($barang)
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Daftar Barang di Ruangan</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
	 
  @csrf
 <div>
   <table class='table table-stripped' style="width:50%">
      <thead>
          <tr>
            <th>No Inventaris</th>
            <th>Nama Barang</th>
            <th>Merk Barang</th>
            <th>Lokasi Barang</th>
            <th>Jumlah Barang</th>
          </tr>
      </thead>
      <tbody>
        @foreach($barang as $b)
          <tr>
             <td>{{$b->no}}</td>
             <td>{{$b->nama_brg}}</td>
             <td>{{$b->merk_brg}}</td>
             <td>{{$b->kode_lokasi}}</td>
             <td>{{$b->no}}</td>
          </tr>
        @endforeach
      </tbody>
   </table>
 </div>
@endisset
@endsection
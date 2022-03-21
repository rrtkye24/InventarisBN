@extends('admin.welcome')

@section('admin')
<script>
</script>
  @if (session('success'))
  <div class="alert-success">
    <p>{{ session('success') }}</p>
  </div>
  @endif

@if ($errors->any())
    <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<div class="container">
<div class="card text mt-3 ml-5">
  <div class="card-header fw-bold">
  <h1><center> <i class="fas fa-bookmark me-3"></i>Peminjaman Barang</h1></center>
  </div>
  <div class="card-body">
<form method="POST" action="{{ route('pinjambrg')}}">
  {{csrf_field()}}
 

  <div class="mb-3">
      <label for="namapeminjam" class="form-label">Nama peminjam</label>
      <input type="text" class="form-control" id="namapeminjam" name='namapeminjam' required>
    </div>
  <div class="mb-3">
      <label for="namabarang" class="form-label">Nama Barang</label>
      <input type="text" class="form-control" id="namabarang" name='namabarang' required>
    </div>
    <div class="mb-3">
      <label for="merkbarang" class="form-label">Merk Barang</label>
      <input   type="text" class="form-control" id="merkbarang" name='merkbarang' required>
    </div>
    <div class="mb-3">
      <label for="kodelokasi" class="form-label">Kode Lokasi</label>
      <input  type="text" class="form-control" id="kodelokasi" name='kodelokasi' required>
    </div>
    <div class="mb-3">
    <label for="jumlahpinjam" class="form-label">Jumlah Pinjam</label>
    <input  type="number" class="form-control" id="jumlahpinjam" name='jumlah' required>
    </div> 
    <div class="mb-3">
    <label for="tanggalpinjam" class="form-label">Tanggal Pinjam</label>
    <input  type="date" class="form-control" id="tanggalpinjam" name='tanggal_pinjam' required>
    </div>   
  <div class="card-footer text-muted">
  <button type="submit" class="btn btn-dark">Kirim</button>
  </div>
</form>
@endsection


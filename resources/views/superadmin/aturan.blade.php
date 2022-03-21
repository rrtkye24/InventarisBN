@extends('superadmin.welcome')

@section('superadmin')
<div class="card text mt-3 ml-5">
  <div class="card-header fw-bold">
 <center><h1><i class="fas fa-book me-3"></i>Pedoman Inventaris BN<h1></center>
  </div>
  <div class="card-body">
<div class="row gx-3">
    <div class="col">
     <div class="p-3 border bg-light fs-1">1</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light fs-1">2</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">3</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">4</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">5</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">6</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">7</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">8</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">9</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">10</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">11</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">12</div>
    </div>
    <div class="col">
     <div class="p-3 border bg-light fs-1">13</div>

    </div>
  </div>

<table class="table">
  <thead ><br><br>
    <tr>
      <th scope="col">NO</th>
      <th scope="col">KOTAK</th>
      <th scope="col">KODE</th>
      <th scope="col">KETERANGAN</th>
    </tr>
  </thead>
  
    <tr>
      <th scope="row">1</th>
      <td>Kotak 1</td>
      <td>Kode Bidang Barang</td>
      <td>1 Barang umum<br>
          2 Barang Alat Lab<br>
          3 Barang Koperasi<br>
          4 Barang UKS<br>
          5 Barang TU<br>
          6 Barang Ruang Guru<br>
          7 Barang Ruang Perpustakaan<br>
          8 Barang Ruang Satpam
    </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Kotak 2, 3, & 4</td>
      <td>Kode Lokasi</td>
      <td>---</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Kotak 5 & 6</td>
      <td>Kode tahun perolehan</td>
      <td>---</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td>Kotak 7</td>
      <td>Kode kelompok alat</td>
      <td>1 Member<br>
        2 Elektronik<br>
        3 Alat Ukur<br>
        4 Alat Praktek<br>
        5 Alat Trainer<br>
        6 Alat Musik<br>
        7 Kendaraan<br>
    </td>
    </tr>
    <tr>
      <th scope="row">5</th>
      <td>Kotak 8, 9 & 10</td>
      <td>Kode nama barang</td>
      <td></td>
    </tr>
    <tr>
      <th scope="row">6</th>
      <td>Kotak 11,12 & 13</td>
      <td>kode urutan barang</td>
      <td>---</td>
    </tr>
  
</table><br><br>

@endsection
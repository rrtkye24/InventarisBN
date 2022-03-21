@extends('superadmin.welcome')

@section('superadmin')
<div class="card">
  <div class="card-header">
  Barang Baru Masuk
  </div>
  <div class="card-body">
  @foreach($new as $baru)
  <li>{{ $baru->nama_brg }} dengan merk  {{$baru->merk_brg}} <br><br>
  <footer class="blockquote-footer"> Tanggal<cite title="Source Title">: {{$baru->tanggal}}</cite></footer>
  </li>
  @endforeach
    <a href="/databarang"><p class="card-text">lihat detail<i class="fas 
    fa-angle-double-right ml-2"></i></p></a>
    
  </div>
</div>
<br>
<div class="card">
  <div class="card-header">
  Barang rusak akhir-akhir ini
  </div>
  <div class="card-body">
  @foreach($rusak as $rsk)
  <li>{{ $rsk->nama_brg }} dengan merk {{$rsk->merk_brg}} , kondisi {{$rsk->kondisi_brg}} <br><br>
  <footer class="blockquote-footer"> Tanggal<cite title="Source Title">: {{$rsk->tanggal}}</cite></footer>
  </li>
  @endforeach
    <a href="/brgrusakberat"><p class="card-text">lihat detail<i class="fas 
    fa-angle-double-right ml-2"></i></p></a>
    
  </div>
</div>
@endsection
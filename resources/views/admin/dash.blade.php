@extends('admin.welcome')

@section('admin')
<div class="card">
  <div class="card-header">
  Barang Baru Masuk
  </div>
  <div class="card-body">
  @foreach($newa as $baru)
  <li>{{ $baru->nama_brg }} dengan merk  {{$baru->merk_brg}} di {{$baru->ket_ruang}} <br><br>
  <footer class="blockquote-footer">   Tanggal<cite title="Source Title">: {{$baru->tanggal}}</cite></footer>
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
  <li>{{ $rsk->nama_brg }} dengan merk {{$rsk->merk_brg}} , kondisi {{$rsk->kondisi_brg}} di {{$rsk->ket_ruang}} <br><br>
  <footer class="blockquote-footer">   Tanggal<cite title="Source Title">: {{$rsk->tanggal}}</cite></footer>
  </li>
  @endforeach
    <a href="/databarang"><p class="card-text">lihat detail<i class="fas 
    fa-angle-double-right ml-2"></i></p></a>
    
  </div>
</div>
@endsection
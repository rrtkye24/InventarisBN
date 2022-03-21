@extends('superadmin.welcome')

@section('superadmin')
<div class="card">
<div class="card-header">
Tambah Kelompok Alat
</div>
<div class="card-body">
<form action="{{ route('jenisalat.store') }}" method="POST">
    @csrf
    <div class="mb-3">
    <label for="kelompokalat" class="form-label">Kode Kelompok Alat</label>
      <select id="kelompokalat" class="form-select" name='kelompokalat' required>
        @foreach($jenis as $k)
        <option value="{{$k->klmpk_alat}}">{{$k->klmpk_alat}}</option>
        @endforeach
        
      </select>
  </div>
  <div class="mb-3">
    <label for="kodebarang" class="form-label">Kode Barang</label>
    <input class="form-control" id="kodebarang" name="kodebarang" type="text" placeholder="Masukkan  kode barang">
  </div>
  <div class="mb-3">
    <label for="jenisalat" class="form-label">Jenis Alat</label>
    <input class="form-control"  id="jenisalat" name="jenisalat" type="text" placeholder="Masukkan jenis alat">
  </div>
  <button type="submit" class="btn btn-primary">Kirim</button>
</form>
</div>
</div>    
@endsection



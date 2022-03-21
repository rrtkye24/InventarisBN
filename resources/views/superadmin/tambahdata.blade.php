@extends('superadmin.welcome')

@section('superadmin')
<script>
</script>
<div class="container">
<div class="card text mt-3 ml-5">
  <div class="card-header fw-bold">
  <h1><i class="fas fa-plus me-3"></i>Tambah Data Barang</h1>
  </div>
  <div class="card-body">
  <form action='/tambahdata/tambah' method='POST'>
  @csrf
  <div class="mb-3">
    <label for="kodebarang" class="form-label">Kode Bidang Barang</label>
      <select id="kodebarang" class="form-select" name='kodebidangbarang' required>
          <option value='1'>Barang Umum</option>
          <option value='2'>Barang Alat Umum</option>
          <option value='3'>Barang TU</option>
          <option value='4'>Barang Ruang Guru</option>
          <option value='5'>Barang Ruang Perpustakaan</option>
          <option value='6'>Barang UKS</option>
          <option value='7'>Barang Koperasi</option>
          <option value='8'>Barang Ruang Satpam</option>
        </select>
        </div>
  <div class="mb-3">
    <label for="kodelokasi" class="form-label">Lokasi</label>
    <select id="kodelokasi" class="form-select" name='kodelokasi' required>
      @foreach($lokasi as $l)
        <option value='{{$l->kode_lokasi}}'>Gedung {{$l->gedung}} lantai {{$l->lantai}} ruangan {{$l->ruangan}} {{$l->ket_ruang}}</option> 
      @endforeach
    </select>
  </div>
  <div class="mb-3">
    <label for="kodekelompokalat" class="form-label">Kode Kelompok Alat</label>
      <select id="kodekelompokalat" class="form-select dynamic" data-dependent="klmpk_alat" name='kodekelompokalat' required>
        @foreach($kelompokalat as $k)
          <option value="{{$k->kode_klmpk_alat}}">{{$k->klmpk_alat}}</option>
        @endforeach
      </select>
 
    <div class="mb-3">
      <label for="kodenamabarang" class="form-label kode">Kode Barang</label>
      <input type="text" class="form-control" id="namabarang" name='kodenamabarang' required>
      <!-- <select id="namabarang" class="form-select dynamic" data-dependent="kode_brg" name='kodenamabarang' required>
       
          <option value="">Pilih Kode Barang</option>
     
      </select> -->
    </div>
    {{ csrf_field() }}
    <div class="mb-3">
    <label for="namabarang" class="form-label nambar">Nama Barang</label>
    <input type="text" class="form-control" id="namabarang" required name='namabarang'>
  </div>
  <div class="mb-3">
    <label for="merkbarang" class="form-label">Merk Barang</label>
    <input type="text" class="form-control" id="merkbarang" name='merek' required>
  </div>
  <div class="mb-3">
    <label for="tanggalmasuk" class="form-label">Tanggal Masuk</label>
    <input type="date" class="form-control" id="tanggalmasuk" name='tanggal' >
  </div>

  <div class="mb-3">
    <!-- <label for="kondisibarang" class="form-label">Kondisi Barang</label>
    <input type="text" class="form-control" id="kondisibarang" name='kondisi' required> -->
    <label for="kondisibarang" class="form-label">Kondisi Barang</label>
      <select id="kondisibarang" class="form-select" name='kondisi' required>
        <option value='baik'>Baik</option>
        <option value='rusak'>Rusak</option>
        <option value='rusak berat'>Rusak Berat</option>
      </select>
  </div>
  <div class="mb-3">
    <label for="sumberdana" class="form-label">Sumber Dana</label>
    <input type="text" class="form-control" id="sumberdana" name="sumberdana" required>
  </div>
  <div class="mb-3">
    <label for="ketbarang" class="form-label">Keterangan Barang</label>
    <input type="text" id='ket' class="form-control" id="ketbarang" name="ketbarang" required="" 
    oninvalid="this.setCustomValidity('Bila keterangan tidak ada, beri tanda `-`')"
 oninput="setCustomValidity('')"
    >
  </div>
    
  <div class="mb-3 form-check">
  </div>
  

  <div class="card-footer text-muted">
  <button type="submit" class="btn btn-primary">Kirim</button>
  </div>
  </form>
</div>
</div>
<script>
$(document).ready(function(){
  $('.dynamic').change(function(){
    if($(this).val() != '')
    {
      var select = $(this).attr("id");
      var value = $(this).val();
      var dependent = $(this).data('dependent');
      var _token = $('input[name="_token"]').val();
      $.ajax({
        url:"{{ route('tambahdata.fetch')}}",
        method:"POST",
        data:{select, value:value, _token:_token, dependent:dependent},
        success:function(result){
          $('#'+dependent).html(result);
        }
      })
    }
  });
});

</script>


@endsection



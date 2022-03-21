@extends('superadmin.welcome')

@section('superadmin')
<form class="d-flex " action="{{route('kelompok')}}" method="GET">
         <input class="form-control me-2" type="text" name="cari" class="form-control" placeholder="Cari data barang" value="{{ old('cari') }}">
        <button class="btn btn-dark " type="submit" value="CARI">Cari</button>
      </form>
<div class="card mt-5   ">
<div class="card-header">
<h1><i class="fa fa-folder-open me-3"></i>Kelompok Alat<h1>
<a class="btn btn-primary" href ="{{route('kelompokalat')}}" ><i class="fas fa-plus">Tambah Data Kelompok Alat</i></a>
</div>
<table class="table caption-top" >
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Kelompok Alat</th>
      <th scope="col">Kode Barang</th>
      <th scope="col">Jenis Kenlompok Alat</th>
    </tr>
  </thead>
  @foreach($jenis_alat as $jk)
  <tbody>
    <tr>
      <th scope="row">{{$jk->id}}</th>
      <td>{{$jk->klmpk_alat}}</td>
      <td>{{$jk->kode_brg}}</td>
      <td>{{$jk->jk_alat}}</td>
    </tr>
  </tbody>
  @endforeach
</table>
{{ $jenis_alat->links() }}
</div>



@endsection
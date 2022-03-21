@extends('superadmin.welcome')

@section('superadmin')
<div class="card">
  <div class="card-header">
  <p class="fs-2">Laporan Peminjaman Barang</p>
  </div>
  <div class="card-body">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Nama Peminjam</th>
      <th scope="col">Nama Barang</th>
      <th scope="col">Merk Barang</th>
      <th scope="col">Lokasi</th>
      <th scope="col">Tanggal Pinjam</th>
      <th scope="col">Jumlah Pinjam</th>
      <th scope="col">Opsi</th>
    </tr>
  </thead>
  @foreach($pinjam as $p)
  <tbody>
  <tr>
     <td>{{ $p->id }}</td>
    <td>{{ $p->namapeminjam }}</td>
    <td>{{ $p->namabarang }}</td>
    <td>{{ $p->merkbarang }}</td>
    <td>{{ $p->kodelokasi }}</td>
    <td>{{ $p->tanggal_pinjam }}</td>
    <td>{{ $p->jumlah }}</td>
    <td> <form method="POST" action="{{ route('pinjambarang.destroy', [$p->id]) }}">
    {{ csrf_field() }}
    {{ method_field('DELETE') }}
                                <button type="submit" title="Hapus Data" class="btn btn-sm btn-warning" onclick="return confirm('Apakah Barang Ini Sudah Dikembalikan?')">Dikembalikan</button>
                            </form>
    </th></td>
  </tr>
  </tbody>
  @endforeach
</table>
  </div>
</div>
@endsection
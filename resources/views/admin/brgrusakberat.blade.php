@extends('admin.welcome')

@section('admin')

<div class="card">
  <div class="card-header">
    <p class="fs-2">Data Barang Rusak </p>
  </div>
  <div class="card-body">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Kode Barang</th>
      <th scope="col">Nama Barang</th>
      <th scope="col">Merk Barang</th>
	  <th scope="col">Lokasi</th>
	  <th scope="col">Kondisi</th>
    <th scope="col">Keterangan</th>
	  <th scope="col">Opsi</th>
    </tr>
  </thead>
  @foreach($brgrusakberat as $brb)
  <tbody>
  	<tr>
      <th scope="col">{{$brb->no}}</th>
      <th scope="col">{{$brb->kode_brg}}</th>
      <th scope="col">{{$brb->nama_brg}}</th>
      <th scope="col">{{$brb->merk_brg}}</th>
	  @foreach($lokasii as $lok)
	<th scope="col">{{$lok->ket_ruang}}</th>
	  @endforeach 
	  <th scope="col">{{$brb->kondisi_brg}}</th>
    <th scope="col">{{$brb->ket_brg}}</th>
    <th>
    <form method="POST" action="{{ route('deletebrg', $brb->no) }}">
       @csrf
       @method('delete')
    <button type="submit" title="Hapus Data" class="btn btn-sm btn-danger" onclick="return confirm('Apakah Barang Ini Sudah Diperbaiki?')"><i class="fas fa-trash" title="Hapus Data"></i>Diperbaiki</button>
   </form>
    </th>
    
    
  </tbody>

  @endforeach
</table>

  </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js"></script>
  <script>
    function delete(){
      swal({
  title: "Are you sure?",
  text: "Once deleted, you will not be able to recover this imaginary file!",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  if (willDelete) {
    swal("Poof! Your imaginary file has been deleted!", {
      icon: "success",
    });
  } else {
    swal("Your imaginary file is safe!");
  }
});
};

  </script>
@endsection

	
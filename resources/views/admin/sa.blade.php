@extends('admin.welcome')

@section('admin')
<script>
  $(document).ready(function(){
              $("#edit-modal").modal("show");
              
          });
</script>
<div class="card">
  <div class="card-header">
  <p class="fs-2">DATA USER</p>
  </div>
  <div class="card-body">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Nama Users</th>
      <th scope="col">Email</th>
      <th scope="col">Level</th>
      <th scope="col">Password</th>
      <th scope="col">Opsi</th>
    </tr>
  </thead>

@foreach($sa as $s)
 <tbody>
   <tr>
     <th scope="col">{{$s->id}}</th>
     <th scope="col">{{$s->name}}</th>
     <th scope="col">{{$s->email}}</th>
     <th scope="col">{{$s->level}}</th>
     <th scope="col">{{$s->password}}</th>
     <th><a href="{{url('sa/edit/'.$s->id)}}" class="btn btn-primary">
  Edit
</a></th>
   </tr>
   @endforeach
 </tbody>
 </table>





@isset($edit)
<!-- Modal -->

<div class="modal fade" id="edit-modal" tabindex="-1" aria-labelledby="exampleModal" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Data Users</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
	  <form action='{{route("editusers")}}' method='POST'>
@csrf
  <div class="mb-3">
      <label for="name" class="form-label">Nama</label>
      <input type="text" class="form-control" id="name" name='name' required value='{{$edit->name}}'>
    </div>
    <div class="mb-3">
    <label for="email" class="form-label">Email</label>
    <input type="text" class="form-control" id="email" required name='email' value='{{$edit->email}}'>
  </div>
  <div class="mb-3">
    <label for="role" class="form-label">Role</label>
    <input type="text" class="form-control" id="role" name='role' required value='{{$edit->role}}'>
  </div>
  <div class="mb-3">
    <label for="level" class="form-label">Level</label>
    <input type="text" class="form-control" id="level" name='level' required value='{{$edit->level}}'>
  </div>
        <button type='submit' class="btn btn-primary">Save changes</button>
      </div>
	  </form>


 @endisset

  
@endsection
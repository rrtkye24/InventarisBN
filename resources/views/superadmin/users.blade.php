@extends('superadmin.welcome')

@section('superadmin')
<center>><h1> <i class="fas fa-users me-3"></i>Selamat Datang Admin</h1>
<br>
<div class="row">
    <div class="col-xl-3 col-md-6 mb-4">
        <a href="" class="text-decoration-none">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col-mr-2">
                        <div class="h3 fw-bold text-primary text-uppercase mb-4">Super Admin</i></div>
                        <div class="h5 mb-0 fw-bold text-gray-800 text-dark"><i class="fas fa-user-tie"></i> {{ Auth::user()->where('role','=','1')->count()}} Users</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas-fa-calendar fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
        </a>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
        <a href="" class="text-decoration-none">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col-mr-2">
                        <div class="h3 fw-bold text-primary text-uppercase mb-4">Admin</i></div>
                        <div class="h5 mb-0 fw-bold text-gray-800 text-dark"><i class="fas fa-user-tie"></i>  {{ Auth::user()->where('role','=','2')->count() }} Users</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas-fa-calendar fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
        </a>
    </div>
    
    <div class="col-xl-3 col-md-6 mb-4">
        <a href="" class="text-decoration-none">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col-mr-2">
                        <div class="h3 fw-bold text-primary text-uppercase mb-4">User</i></div>
                        <div class="h5 mb-0 fw-bold"><i class="fas fa-user-tie text-dark"></i>  {{ Auth::user()->where('role','=','3')->count() }} Users</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas-fa-calendar fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
        </a>
    </div>
<center>
@endsection
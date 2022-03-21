<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Inventaris BN</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <link href="{{ asset('asset/style.css') }}" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css">
        <!-- js -->
        <script src="js/app.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script>
          $(document).ready(function(){
              $("#exampleModal").modal("show");        
          });
        </script>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>

<!-- (Optional) Latest compiled and minified JavaScript translation files -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/i18n/defaults-*.min.js"></script>
    <body>
        <!-- navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="navbar">
  <div class="container-fluid mb-3">

    <a class="navbar-brand"><div class="sidebar-heading text-center  primary-text fs-2 fw-bold text-uppercase ">
                    <i class="fas fa-user-secret me-2" ></i>Inventaris 
                    </a>
</div>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
        <!-- <li class="nav-item dropdown">
          <a class="nav-link " href="/users" id="navbarDropdown" role="button" >
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li> -->

      </ul>
      <ul class="navbar-nav me-5 mb-2 mb-lg-0">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
    </div>
  </div>
</nav>


            <script>
              
              function openNav() {
              document.getElementById("mySidebar").style.width = "250px";
              document.getElementById("main").style.marginLeft = "250px";
              document.getElementById("navbar").style.marginLeft = "250px";
              document.getElementById("content-dashboard").style.marginLeft = "250px";
  }
  
  
            function closeNav() {
            document.getElementById("mySidebar").style.width = "0";
            document.getElementById("main").style.marginLeft = "0";
            document.getElementById("navbar").style.marginLeft = "0";
            document.getElementById("content-dashboard").style.marginLeft = "0";
  }
            </script>
            <div id="mySidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <ul class="list-group">

              <img src="{{asset('pictures/bn-logo.jpg')}}" alt="" id="logo">
              <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                     SMK BAGIMU NEGERIKU
          </a>

              <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
               Inventaris BN
          </a>

              <li class="nav-item">
              <a href="/dash" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                  <i class="fas fa-tachometer-alt me-3"></i>Dashboard
          </a>
          </li>
              <li class="nav-item"> 
              <a href="/tambahdata" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                  <i class="fas fa-plus me-3"></i>Tambah Data
          </a>
          </li>
              <li class="nav-item">
              <a href="/aturan" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                  <i class="fas fa-book me-3"></i>Aturan
          </a>
          </li>
              <li class="nav-item">
              <a href="/kelompok_alat" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                  <i class="fas fa-book me-3"></i>Kelompok Alat
          </a>
          </li>
              <li class="nav-item">
              <a href="/databarang" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                   <i class="fas fa-box me-3"></i>Data Barang
          </a>
          </li>
              <li class="nav-item">
              <a href="/dataruangan" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                  <i class="fas fa-archway me-3"></i>Data Ruangan
          </a>
          </li>
              <li class="nav-item">
              <a href="/pinjambarang" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
              <i class="fas fa-newspaper me-3"></i>Pinjam Barang
          </a>
          </li>
          </li>
              <li class="nav-item dropdown">
              <a href="/users" class="nav-link dropdown-toggle second-text fw-bold" id="navbar-dropdown"  aria-expanded="false">
                  <i class="fas fa-users me-3"></i>Users
          </a>
               <div class="dropdown-menu">
               <a class="dropdown-item fs-6" href="/sa">Data User</a>
              </div>
           </li>
             <li class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle second-text fw-bold" id="navbar-dropdown" > 
              <i class="fas fa-newspaper me-3"></i>Laporan
             </a>
               <div class="dropdown-menu">
               <a class="dropdown-item fs-6" href="brgrusakberat">Barang Rusak</a>
               <a href="/laporanpeminjaman" class="dropdown-item fs-6">
              Laporan Peminjaman</a>
              <a href="/dataterhapus" class="dropdown-item fs-6">
              Laporan Penghapusan Data</a>
              </div>
             </li>
          </ul>
      </div>
            <!-- Side Bar End -->
                <div class="container-fluid px-4">
                <div id="main">
                  <button class="openbtn" onclick="openNav()">&#9776;</button>
                    @yield('superadmin')
                    @include('sweetalert::alert')
                </div>
                </div>
            </div>
         </div>

    </body>
</html>
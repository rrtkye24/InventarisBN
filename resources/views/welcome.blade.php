
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Inventaris BN</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->

<body class="main-layout">
    <!-- loader  -->
    <div class="loader_bg">
        <div class="loader"><img src="images/loading.gif" alt="#" /></div>
    </div>
    <!-- end loader -->
    <!-- header -->
    <header>
        <!-- header inner -->
        <div class="header-top">
            <div class="header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo">
                                        <a href="index.html"><i class="fas fa-user-secret me-2" ></i><p class="fs-5">Inventaris BN</p></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                            <div class="menu-area">
                                <div class="limit-box">
                                    <nav class="main-menu">
                                        <ul class="menu-area-main">
                <div class="flex-center position-ref full-height">
                    @if (Route::has('login'))
                           
                    @auth
                        <li class="btn btn-warning fs-1 "> <a href="{{ url('/home') }}">Home</a></li>
                    @else
                        <li class="btn btn-warning fs-1"><a href="{{ route('login') }}" class="flex">Login</a></li>

                    @if (Route::has('register'))
                            <li class="btn btn-warning fs-1"><a href="{{ route('register') }}">Register</a></li>
                        @endif
                    @endauth
                </div>
            @endif
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end header inner -->

            <!-- end header -->
            <section class="slider_section">
                <div class="banner_main">

                    <div class="container">

                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ">
                                <div class="text-bg">
                                    <h1>Welcome to  <br> <strong class="b_bold">Inventaris  </strong></h1>
                                    <span><mark style="background-color:black; color:yellow;">SMK BAGIMU NEGERIKU SEMARANG <br> Sekolah Sang Juara</mark></span>
                                    <!-- <a href="#">Contact Us</a> <a href="#">Book Online</a> -->
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="text-img">
                                    <!-- <figure style="width:24em;height:24em;"><img src="images/img.png" /></figure> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        </section>
        </div>
        </div>
    </header>
    <!-- about  -->
    <div id="about" class="about">
        <div class="container">
            <div class="row">

                <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12">
                    <div class="about-box">
                        <h3> Tentang Aplikasi</h3>
                        <span>Inventaris BN</span>
                        <p>Ini adalah sebuah aplikasi yang dirancang dan dibuat khusus oleh murid dari SMK BN dari jurusan RPL, aplikasi ini akan mempermudah Sarpras, Kepala Laboran, dan juga
                            Laboran sendiri dalam proses pengelolaan data barang yang ada dalam ruang lingkup Bagimu Negeriku ini</p>
                        <a href="{{ route('login') }}">Login</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- end abouts -->

    <!-- our how_it -->
    <!-- <div id="blog" class="how_it">
        <div class="container-fluid paddimg_ouu">
            <div class="row">

                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 padding-right1">
                    <div class="two-box">
                       
                    </div>
                </div>

              
            </div>
        </div>
    </div>
    </div>-->
    <!-- end how_it -->
    <!-- We are -->
    <!--<div id="casino" class="We_are"  > -->
        <!-- <div class="container">
            <div class="row">
                <div class="col-md-12" >
                    <div class="titlepage">
                        <h2>bn product</h2>
                        <span>aplikasi dibuat oleh kelas XI RPL</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="main_slider" class="carousel slide banner-main" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="first-slide" src="images/laptop.png" alt="First slide">
                                <div class="container">
                                    <div class="carousel-caption relative">
                                        

                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="second-slide" src="images/photo-editing.png" alt="Second slide">
                                <div class="container">
                                    <div class="carousel-caption relative">
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                            
                        </div> -->
                        <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev"> <i class='fa fa-angle-left'></i></a>
                        <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next"> <i class='fa fa-angle-right'></i></a>
                    </div>

                </div>
            </div>
        </div>
    </div>
            <div class="copyright"style="background-color:black;">
                <div class="container"  >
                    <p style="color:white;">© 2021 All Rights Reserved. RARIRES Project </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- end footer -->
    <!-- Javascript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>
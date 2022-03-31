<!--
=========================================================
* Argon Dashboard - v1.2.0
=========================================================
* Product Page: https://www.creative-tim.com/product/argon-dashboard


* Copyright  Creative Tim (http://www.creative-tim.com)
* Coded by www.creative-tim.com



=========================================================
* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Complience System - EBTKE ESDM">
  <meta name="author" content="Creative Tim">
  <title>@yield('title-menu') - Complience System</title>
  <!-- Favicon -->
  <!-- <link rel="icon" href="assets/img/brand/favicon.png" type="image/png"> -->
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;600">
  <!-- Icons -->
  <link rel="stylesheet" href="{{asset('assets/vendor/nucleo/css/nucleo.css')}}" type="text/css">
  <link rel="stylesheet" href="{{asset('assets/vendor/@fortawesome/fontawesome-free/css/all.min.css')}}"
    type="text/css">
  <!-- Page plugins -->
  <!-- Argon CSS -->
  <link rel="stylesheet" href="{{asset('assets/css/argon.css?v='.env('APP_VERSION'))}}" type="text/css">
  @yield('styles')
</head>

<body>
  <!-- Sidenav -->
  <nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-black" id="sidenav-main">
    <div class="scrollbar-inner">
      <!-- Brand -->
      <div class="sidenav-header  align-items-center">
        <a class="navbar-brand" href="javascript:void(0)">
          <i class="fas fa-user-circle user-profile" style="min-width: 2rem;margin-right: 1rem;"></i>
          <span class="nav-link-text">Admin</span>
        </a>
      </div>
      <div class="navbar-inner">
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main">
          <!-- Nav items -->
          <!-- <hr class="my-1"> -->

          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link {{\Request::route()->getName() == 'dashboard.index' ? 'active' : ''}}" href="{{route('dashboard.index')}}">
                <i class="fas fa-th-large text-yellow-cus"></i>
                <span class="nav-link-text">Dashboard</span>
              </a>
              <a class="nav-link {{\Request::route()->getName() == 'pengawasan.index' ? 'active' : ''}}" href="{{route('pengawasan.index')}}">
                <i class="fas fa-table text-yellow-cus"></i>
                <span class="nav-link-text">Pengawasan</span>
              </a>
              <a class="nav-link {{\Request::route()->getName() == 'lab.index' ? 'active' : ''}}" href="{{route('lab.index')}}">
                <i class="fas fa-tags text-yellow-cus"></i>
                <span class="nav-link-text">Pengujian Lab</span>
              </a>
              {{-- <a class="nav-link" href="{{'/'}}">
                <i class="fas fa-table text-yellow-cus"></i>
                <span class="nav-link-text">Data Pengawasan</span>
              </a> --}}
              <a class="nav-link {{\Request::route()->getName() == 'masterdata.complience' ? 'active' : ''}}" href="{{route('masterdata.complience')}}">
                <i class="fas fa-database text-yellow-cus"></i>
                <span class="nav-link-text">Master Data</span>
              </a>
              <a class="nav-link {{\Request::route()->getName() == 'masterdata.produk' ? 'active' : ''}}" href="{{route('masterdata.produk')}}">
                <i class="fas fa-box text-yellow-cus"></i>
                <span class="nav-link-text">Data Produk</span>
              </a>
              <a class="nav-link" href="#">
                <i class="fas fa-box text-yellow-cus"></i>
                <span class="nav-link-text">Pengelolaan User</span>
              </a>
            </li>
          </ul>
          <!-- Divider -->

          <!-- Heading -->
        </div>
      </div>
    </div>
  </nav>
  <!-- Main content -->
  <div class="main-content" id="panel">
    <!-- Topnav -->
    <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
      <div class="container-fluid">
        <span class="title-menu">
          @yield('title-menu')
        </span>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Navbar links -->
          <ul class="navbar-nav align-items-center  ml-md-auto ">
            <li class="nav-item d-xl-none">
              <!-- Sidenav toggler -->
              <div class="pr-3 sidenav-toggler sidenav-toggler-dark" data-action="sidenav-pin"
                data-target="#sidenav-main">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                <i class="ni ni-bell-55"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-xl  dropdown-menu-right  py-0 overflow-hidden">
                <!-- Dropdown header -->
                <div class="px-3 py-3">
                  <h6 class="text-sm text-muted m-0">1 Pesan Belum dibaca
                  </h6>
                </div>
                <!-- List group -->
                <div class="list-group list-group-flush">
                  <a href="#!" class="list-group-item list-group-item-action">
                    <div class="row align-items-center">
                    
                      <div class="col">
                        <div class="d-flex justify-content-between align-items-center py-1 px-3">
                          <div>
                            <h4 class="mb-0">Test</h4>
                          </div>
                          <div class="text-right text-muted">
                          </div>
                        </div>
                        <p class="text-sm mb-0">Test Message</p>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>

    </nav>
    <div class="line-title"></div>
    <!-- Header -->
    <!-- Header -->
    <!-- Page content -->
    <div class="container-fluid">
      @yield('contents')
    </div>
  </div>

  <div class="modal fade" tabindex="-1" role="dialog" id="modalSuccessInput">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content modal-comp">
        <div class="modal-body text-center p-5">
          <i class="ni ni-bell-55 mb-4"></i>
          <h2>Simpan Data Berhasil</h2>
          <h2>&</h2>
          <h2>@if(session()->has('success')) {{session('success')}} @endif</h2>
          <a href="/" class="btn btn-yellow button-comp mt-5">Kembali ke Dashboard</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Argon Scripts -->
  <!-- Core -->
  <script src="{{asset('assets/vendor/jquery/dist/jquery.min.js')}}"></script>
  <script src="{{asset('assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{asset('assets/vendor/js-cookie/js.cookie.js')}}"></script>
  <script src="{{asset('assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js')}}"></script>
  <script src="{{asset('assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js')}}"></script>
  <!-- Optional JS -->
  <script src="{{asset('assets/vendor/chart.js/dist/Chart.min.js')}}"></script>
  <script src="{{asset('assets/vendor/chart.js/dist/Chart.extension.js')}}"></script>
  <!-- Argon JS -->
  <script src="{{asset('assets/js/argon.js')}}"></script>
  <script>
    @if(session()->has('success'))
      $("#modalSuccessInput").modal('show');
    @endif
  </script>
  @yield('scripts')
</body>

</html>
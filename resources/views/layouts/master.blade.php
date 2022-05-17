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
  <title>@yield('title-menu') - Compliance System</title>
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
  {{-- <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}" type="text/css"> --}}
  <link rel="stylesheet" href="{{asset('assets/css/argon.css?v='.env('APP_VERSION'))}}" type="text/css">
  <link rel="stylesheet" href="//cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" type="text/css">
  <script src="{{asset('assets/vendor/jquery/dist/jquery.min.js')}}"></script>
  <script>
    function hitungDeviasi(id){
      let eerPengujian_input = parseInt($("#eerPengujian_input"+id).val());
      let eerSHE_input = parseInt($("#eerSHE_input"+id).val());
      let eerNP_input = parseInt($("#eerNP_input"+id).val());
      
      let cspfPengujian_input = parseInt($("#cspfPengujian_input"+id).val());
      let cspfSHE_input = parseInt($("#cspfSHE_input"+id).val());
      let cspfNP_input = parseInt($("#cspfNP_input"+id).val());

      let eerSHE = ((eerPengujian_input/eerSHE_input) * 100) - 100;
      let cspfSHE = ((cspfPengujian_input/cspfSHE_input) * 100) - 100;
      let eerNP = ((eerPengujian_input/eerNP_input) * 100) - 100;
      let cspfNP = ((cspfPengujian_input/cspfNP_input) * 100) - 100;
      $(".eerSHE"+id).text(roundTo(eerSHE, 7));
      $(".cspfSHE"+id).text(roundTo(cspfSHE, 7));
      $(".eerNP"+id).text(roundTo(eerNP, 7));
      $(".cspfNP"+id).text(roundTo(cspfNP, 7));
    }

      function roundTo(n, digits) {
        if (digits === undefined) {
          digits = 0;
        }

        var multiplicator = Math.pow(10, digits);
        n = parseFloat((n * multiplicator).toFixed(11));
        var test =(Math.round(n) / multiplicator);
        return +(test.toFixed(digits));
      }
  </script>
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
          <span class="nav-link-text">{{\Auth::user()->username}}</span>
        </a>
      </div>
      <div class="navbar-inner">
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main">
          <!-- Nav items -->
          <!-- <hr class="my-1"> -->

          <ul class="navbar-nav">
            <li class="nav-item">
              <a data-toggle="collapse" href="#dashboardCollapse" class="nav-link collapsed {{in_array(\Request::route()->getName(), $result['routeDashboard']) ? 'active' : ''}}" aria-controls="masterDataCollapse" role="button" aria-expanded="{{in_array(\Request::route()->getName(), $result['routeDashboard']) ? 'true' : 'false'}}">
                <i class="fas fa-database text-yellow-cus"></i>
                <span class="nav-link-text">Dashboard</span>
              </a>
              <div class="collapse {{in_array(\Request::route()->getName(), $result['routeDashboard']) ? 'show' : ''}}" id="dashboardCollapse" style="">
                <ul class="nav ms-4">
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'dashboard.index' ? 'active' : ''}}" href="{{route('dashboard.index')}}">
                      <span class="nav-link-text">Peralatan</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'dashboard.global' ? 'active' : ''}}" href="{{route('dashboard.global')}}">
                      <span class="nav-link-text">Perbandingan Peralatan</span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a  class="nav-link" data-toggle="collapse" href="#highriskCollapse">
                  <i class="fas fa-database text-yellow-cus"></i>
                <span class="nav-link-text">High Risk Tool</span>
              </a>
              <div class="collapse" id="highriskCollapse" style="" >
                <ul class="nav ms-4">
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'highrisk.index' ? 'active' : ''}}" href="{{route('highrisk.index')}}">
                      <span class="sidenav-normal">High Risk Produk</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'highrisk.report' ? 'active' : ''}}" href="{{route('highrisk.report')}}">
                      <span class="sidenav-normal">Lapor History Non Complience</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'highrisk.volume' ? 'active' : ''}}" href="{{route('highrisk.volume')}}">
                      <span class="sidenav-normal">Volume produk</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'highrisk.kriteria' ? 'active' : ''}}" href="{{route('highrisk.kriteria')}}">
                      <span class="sidenav-normal">Kriteria High Risk</span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            @if (\Auth::user()->id_user_role == 2 || \Auth::user()->id_user_role == 3)
            <li class="nav-item">
              <a data-toggle="collapse" href="#formuliCollapse" class="nav-link collapsed {{in_array(\Request::route()->getName(), $result['routeListFormulir']) ? 'active' : ''}}" aria-controls="formuliCollapse" role="button" aria-expanded="{{in_array(\Request::route()->getName(), $result['routeListFormulir']) ? 'true' : 'false'}}">
                  <i class="fas fa-clipboard-list text-yellow-cus"></i>
                @if (\Auth::user()->id_user_role == 2)
                  <span class="nav-link-text">Formulir Inspeksi</span>
                @elseif(\Auth::user()->id_user_role == 3)
                  <span class="nav-link-text">Formulir</span>
                @endif
              </a>
              <div class="collapse {{in_array(\Request::route()->getName(), $result['routeListFormulir']) ? 'show' : ''}}" id="formuliCollapse" style="">
                <ul class="nav ms-4">
                  @if (\Auth::user()->id_user_role == 2)
                  <li class="nav-item ">
                    <a class="nav-link collapsed {{in_array(\Request::route()->getName(), $result['routeListPendataan']) ? 'active' : ''}}" data-toggle="collapse" aria-expanded="{{in_array(\Request::route()->getName(), $result['routeListPendataan']) ? 'true' : 'false'}}" href="#pendataanCollapse">
                      <span class="sidenav-normal"> Aktivasi Pendataan</span>
                    </a>
                    <div class="collapse {{in_array(\Request::route()->getName(), $result['routeListPendataan']) ? 'show' : ''}}" id="pendataanCollapse" style="">
                      <ul class="nav nav-sm">
                        <li class="nav-item">
                          <a class="nav-link nav-third-child {{\Request::route()->getName() == 'pengawasan.pemilihanlabuji' ? 'active' : ''}}" href="{{route('pengawasan.pemilihanlabuji')}}">
                            <span class="sidenav-normal">Aktivasi Pendataan Uji Petik</span>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link nav-third-child {{\Request::route()->getName() == 'form4.pilihproduk' ? 'active' : ''}}" href="{{route('form4.pilihproduk')}}">
                            <span class="sidenav-normal">Aktivasi Pendataan RRT dan Pengujian Lainnya</span>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </li>
                  @endif
                  @if (\Auth::user()->id_user_role == 2 || \Auth::user()->id_user_role == 3)
                  <li class="nav-item ">
                    <a class="nav-link {{in_array(\Request::route()->getName(), $result['routeListLab']) ? 'active' : ''}}" data-toggle="collapse" aria-expanded="{{in_array(\Request::route()->getName(), $result['routeListLab']) ? 'true' : 'false'}}" href="#labUjiCollapse">
                      <span class="sidenav-normal"> Rekam Data Lab Uji</span>
                    </a>
                    <div class="collapse {{in_array(\Request::route()->getName(), $result['routeListLab']) ? 'show' : ''}}" id="labUjiCollapse">
                      <ul class="nav nav-sm">
                        <li class="nav-item">
                          <a class="nav-link nav-third-child {{\Request::route()->getName() == 'form2.index' ? 'active' : ''}}" href="{{route('form2.index')}}">
                            <span class="sidenav-normal">Pemeriksaan Sampel Uji</span>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link nav-third-child {{\Request::route()->getName() == 'form3.index' ? 'active' : ''}}" href="{{route('form3.index')}}">
                            <span class="sidenav-normal">Hasil Pengujian</span>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </li>
                  @endif
                </ul>
              </div>
            </li>
            @endif
            <li class="nav-item">
              <a data-toggle="collapse" href="#masterDataCollapse" class="nav-link collapsed {{in_array(\Request::route()->getName(), $result['routeListMaster']) ? 'active' : ''}}" aria-controls="masterDataCollapse" role="button" aria-expanded="{{in_array(\Request::route()->getName(), $result['routeListMaster']) ? 'true' : 'false'}}">
                  <i class="fas fa-database text-yellow-cus"></i>
                <span class="nav-link-text">Master Data</span>
              </a>
              <div class="collapse {{in_array(\Request::route()->getName(), $result['routeListMaster']) ? 'show' : ''}}" id="masterDataCollapse" style="">
                <ul class="nav ms-4">
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'masterdata.inspeksi_visual' ? 'active' : ''}}" href="{{route('masterdata.inspeksi_visual')}}">
                      <span class="sidenav-normal">Inspeksi Visual</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'masterdata.uji_petik' ? 'active' : ''}}" href="{{route('masterdata.uji_petik')}}">
                      <span class="sidenav-normal">Uji Petik</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'masterdata.roundrobin' ? 'active' : ''}}" href="{{route('masterdata.roundrobin')}}">
                      <span class="sidenav-normal">Round Robin Testing</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'masterdata.pengujian_ulang' ? 'active' : ''}}" href="{{route('masterdata.pengujian_ulang')}}">
                      <span class="sidenav-normal">Pengujian Ulang</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'masterdata.pengujian_lainnya' ? 'active' : ''}}" href="{{route('masterdata.pengujian_lainnya')}}">
                      <span class="sidenav-normal">Pengujian Lainnya</span>
                    </a>
                  </li>
                  @if (\Auth::user()->id_user_role == 1 || \Auth::user()->id_user_role == 2)
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'masterdata.produk.index' ? 'active' : ''}}" href="{{route('masterdata.produk.index', 'ac')}}">
                      <span class="sidenav-normal">Produk Microsite</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link {{\Request::route()->getName() == 'laboratorium.index' ? 'active' : ''}}" href="{{route('laboratorium.index')}}">
                      <span class="sidenav-normal">Laboratorium Uji</span>
                    </a>
                  </li>
                  @endif
                </ul>
              </div>
            </li>
            @if (\Auth::user()->id_user_role == 1 || \Auth::user()->id_user_role == 2)
            <li class="nav-item">
              <a class="nav-link {{\Request::route()->getName() == 'user.index' ? 'active' : ''}}" href="{{route('user.index')}}">
                <i class="fas fa-users text-yellow-cus"></i>
                <span class="nav-link-text">Pengelolaan User</span>
              </a>
            </li>
            @endif
            <li class="nav-item">
              <a class="nav-link" href="{{ route('logout') }}"
              onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">
                <i class="fas fa-sign-out-alt text-yellow-cus"></i>
                <span class="nav-link-text">Log Out</span>
              </a>
              <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                @csrf
            </form>
            </li>
          </ul>

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
          <button type="button" data-dismiss="modal" class="btn btn-yellow button-comp mt-5">Tutup</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Argon Scripts -->
  <!-- Core -->
  
  <script src="{{asset('assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{asset('assets/vendor/js-cookie/js.cookie.js')}}"></script>
  <script src="{{asset('assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js')}}"></script>
  <script src="{{asset('assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js')}}"></script>
  <script src="{{asset('assets/js/argon.js')}}"></script>
  <script src="{{asset('assets/js/main.js')}}"></script>
  <script src="//cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
  <script>
    @if(session()->has('success'))
      $("#modalSuccessInput").modal('show');
    @endif
  </script>
  @yield('scripts')
</body>

</html>
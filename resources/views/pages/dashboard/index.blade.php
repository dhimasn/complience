@extends('layouts.master')
@section('title-menu', 'Dashboard')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/vendor/leaflet/leaflet.css')}}" type="text/css">
<link rel="stylesheet" type="text/css" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.css" />
<link rel="stylesheet" type="text/css"
  href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.Default.css" />
<link rel="stylesheet" href="{{asset('assets/vendor/chartjs/dist/Chart.min.css')}}" type="text/css">
@endsection
@section('contents')
<div class="row">
  <div class="col-xl-6 col-md-6">
    <div class="card">
      <div class="card-header py-2">
        Jumlah Produk
      </div>
      <div class="card-body p-1">
        <canvas id="barJumlahProduk" height="160"></canvas>
      </div>
    </div>
    <div class="card">
      <div class="card-header py-2">
        Kepatuhan Uji Petik
      </div>
      <div class="card-body p-1">
        <div class="row">
          <div class="col-6">
            <canvas id="chartVerifikasiAC" height="300"></canvas>
          </div>
          <div class="col-6">
            <canvas id="chartVerifikasiKulkas" height="300"></canvas>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header py-2">
        Dampak Regulasi
      </div>
      <div class="card-body p-1">
        <div class="row">
          <div class="col-6">
            <canvas id="barDampakRegulasiEnergi" height="350"></canvas>
          </div>
          <div class="col-6">
            <canvas id="barDampakRegulasiEmisi" height="350"></canvas>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-xl-6 col-md-6">
    <div class="row">
      <div class="col-xl-6 col-md-6">
        <div class="card card-stats">
          <!-- Card body -->
          <div class="card-body">
            <div class="row">
              <div class="col">
                <h5 class="card-title text-uppercase text-muted mb-0">Produsen Dalam Negeri</h5>
                <span class="h2 font-weight-bold mb-0">35</span>
              </div>
              <div class="col-auto">
                <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
                  <i class="ni ni-active-40"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card card-stats">
          <!-- Card body -->
          <div class="card-body">
            <div class="row">
              <div class="col">
                <h5 class="card-title text-uppercase text-muted mb-0">Total Produk Diinspeksi</h5>
                <span class="h2 font-weight-bold mb-0">{{$totalProdukInspeksi}}</span>
              </div>
              <div class="col-auto">
                <div class="icon icon-shape bg-gradient-info text-white rounded-circle shadow">
                  <i class="ni ni-chart-bar-32"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-6 col-md-6">
        <div class="card card-stats">
          <div class="card-body">
            <div class="row">
              <div class="col">
                <h5 class="card-title text-uppercase text-muted mb-0">Jumlah Importir</h5>
                <span class="h2 font-weight-bold mb-0">-</span>
              </div>
              <div class="col-auto">
                <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
                  <i class="ni ni-active-40"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card card-stats">
          <div class="card-body">
            <div class="row">
              <div class="col">
                <h5 class="card-title text-uppercase text-muted mb-0">Jumlah Perusahaan</h5>
                <span class="h2 font-weight-bold mb-0">-</span>
              </div>
              <div class="col-auto">
                <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
                  <i class="ni ni-active-40"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header py-2">
            Kepatuhan Inspeksi Visual
          </div>
          <div class="card-body p-1">
              <canvas id="barInspeksiVisual" height="150"></canvas>
          </div>
        </div>
        <div class="card">
          <div class="card-header py-1">
            Peta Sebaran Inspeksi
          </div>
          <div id="map" style="height: 383px"></div>
        </div>
        <div class="card">
          <div class="card-header py-2">
            Status Pendataan
          </div>
          <div class="table-responsive">
            <!-- Projects table -->
            <table class="table align-items-center table-flush">
              <thead class="thead-light">
                <tr>
                  <th scope="col">Produk</th>
                  <th scope="col">Merek</th>
                  <th scope="col">Pengawas</th>
                  <th scope="col">Lab</th>
                  <th scope="col">Status</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">
                    AC
                  </th>
                  <td>
                    Daikin
                  </td>
                  <td>
                    Pengawas
                  </td>
                  <td>
                    Qualis
                  </td>
                  <td>
                    Pemilihan Lab Uji
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="modalDetailToko" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Produk Inspeksi Toko <span id="titleName">Test</span></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="table-responsive px-3">
        <span>Total 1</span>
        <table class="table align-items-center table-flush">
          <thead class="thead-light">
            <tr>
              <th scope="col">No SHE</th>
              <th scope="col">Produk</th>
              <th scope="col">Merek</th>
              <th scope="col">Pengawas</th>
              <th scope="col">Lab</th>
              <th scope="col">Status</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">
                AC
              </th>
              <td>
                Daikin
              </td>
              <td>
                Pengawas
              </td>
              <td>
                Qualis
              </td>
              <td>
                Pemilihan Lab Uji
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
      </div>
    </div>
  </div>
</div>
@endsection
@section('scripts')
<script src="{{asset('assets/vendor/leaflet/leaflet.js')}}"></script>
<script src="{{asset('assets/vendor/chartjs/dist/Chart.min.js')}}"></script>
<script src="{{asset('assets/vendor/chartjs/dist/plugin-labels.js')}}"></script>
<script type="text/javascript" src="https://unpkg.com/leaflet.markercluster@1.4.1/dist/leaflet.markercluster.js">
</script>
<script>
  // maps
    var addressPoints = [
      @foreach($dataForm as $form)
        [{{$form['lat']}}, {{$form['long']}}, "{{$form['lokasi_pengawasan']}}", "{{$form['sesuai']}}"],
      @endforeach
    ];
    var map = L.map('map').setView([-2.000373, 116.526913], 5);

    L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}', {
    maxZoom: 20,
    subdomains: ['mt0', 'mt1', 'mt2', 'mt3'],
    attribution: '&copy; <a href="https://www.google.com">Google Maps</a> contributors'
    }).addTo(map);
    
    var markers = L.markerClusterGroup();

    var redIcon = new L.Icon({
      iconUrl: '{{asset("assets/vendor/leaflet/images/marker-icon-red.png")}}',
      shadowUrl: '{{asset("assets/vendor/leaflet/images/marker-shadow.png")}}',
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      shadowSize: [41, 41]
    });

    var blueIcon = new L.Icon({
      iconUrl: '{{asset("assets/vendor/leaflet/images/marker-icon.png")}}',
      shadowUrl: '{{asset("assets/vendor/leaflet/images/marker-shadow.png")}}',
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      shadowSize: [41, 41]
    });

    for (var i = 0; i < addressPoints.length; i++) {
      var a = addressPoints[i];
      var title = a[2];
      var iconMarker = blueIcon;
      if(a[3] == '1'){
        iconMarker = redIcon;
      }
      var marker = L.marker(new L.LatLng(a[0], a[1]), { title: title, icon: iconMarker });
      marker.bindPopup(`<div class="text-center">Toko<br><a style="text-decoration: underline;" data-target="#modalDetailToko" class="linkDetail" data-toggle="modal" data-name="${title}" href="#">${title}</a></div>`);
      markers.addLayer(marker);
    }

    map.addLayer(markers);
    // end map

    //chart Kepatuhan Uji petik
    var data = {
        labels: ["Sesuai","Tidak Sesuai"],
        datasets: [
            {
                data: [{{$ketidaksesuai['sesuai']}}, {{$ketidaksesuai['tidak_sesuai']}}],
                backgroundColor: ["#7ba7b0","#f39800"]
            }]
    };
    var chartVerifikasiAC = document.getElementById("chartVerifikasiAC");
    new Chart(chartVerifikasiAC, {
        type: 'pie',
        data: data,
        options: {
          pieceLabel: {
            render: 'value' //show values
          },
          legend: {
            display: false,
          },
          title: {
            display: true,
            text: 'AC'
          }
        }
    });
    var data = {
        labels: ["Sesuai","Tidak Sesuai"],
        datasets: [
            {
                data: [{{$ketidaksesuai['sesuai']}}, {{$ketidaksesuai['tidak_sesuai']}}],
                backgroundColor: ["#7ba7b0","#f39800"]
            }]
    };

    var chartVerifikasiKulkas = document.getElementById("chartVerifikasiKulkas");
    new Chart(chartVerifikasiKulkas, {
        type: 'pie',
        data: data,
        options: {
          pieceLabel: {
            render: 'value' //show values
          },
          legend: {
            display: false,
          },
          title: {
            display: true,
            text: 'Kulkas'
          }
        }
    });
    var data = {
        labels: ["Sesuai","Tidak Sesuai"],
        datasets: [
            {
                data: [{{$ketidaksesuai['sesuai']}}, {{$ketidaksesuai['tidak_sesuai']}}],
                backgroundColor: ["#7ba7b0","#f39800"]
            }]
    };
    // END Kepatuhan Uji petik

    // CHART Kepatuhan Inspeksi Visual
    var data = {
        labels: ["Label Salah Format","Label Rusak", "Label Tidak Jelas", "Tidak Ada Label"],
        datasets: [
            {
              label: 'AC',
              data: [1, 2,3, 5],
              backgroundColor: "#7ba7b0"
            },
            {
              label: 'Kulkas',
              data: [7, 8, 2, 1],
              backgroundColor: "#f39800"
            },
        ]
    };
    var barInspeksiVisual = document.getElementById("barInspeksiVisual");
    new Chart(barInspeksiVisual, {
        type: 'horizontalBar',
        data: data,
        options: {
          pieceLabel: {
            render: 'value' //show values
          },
          elements: {
            bar: {
              borderWidth: 2,
            }
          },
          responsive: true,
          legend: {
            position: 'right',
          },
        }
    });
    // END Kepatuhan Inspeksi Visual

    // CHART Produk
    var yearNow = new Date().getFullYear();
    var data = {
        labels: ["AC","Kulkas"],
        datasets: [
            {
              label: 'Importir',
              data: [20, 50],
              backgroundColor: "#7ba7b0"
            },
            {
              label: 'Produk Lokal',
              data: [7, 8],
              backgroundColor: "#f39800"
            },
            {
              label: 'Produk Inspeksi '+yearNow,
              data: [7, 0],
              backgroundColor: "#f7dfa0"
            },
        ]
    };
    var barJumlahProduk = document.getElementById("barJumlahProduk");
    new Chart(barJumlahProduk, {
        type: 'horizontalBar',
        data: data,
        options: {
          elements: {
            bar: {
              borderWidth: 2,
            }
          },
          responsive: true,
        }
    });
    // END Produk

    // CHART Dampak Regulasi (Penghematan energi)
    var data = {
        labels: ["GWh"],
        datasets: [
            {
              label: 'AC',
              data: [20],
              backgroundColor: "#7ba7b0"
            },
            {
              label: 'Kulkas',
              data: [7],
              backgroundColor: "#f39800"
            }
        ]
    };
    var barDampakRegulasiEnergi = document.getElementById("barDampakRegulasiEnergi");
    new Chart(barDampakRegulasiEnergi, {
        type: 'bar',
        data: data,
        options: {
          scales: {
            xAxes: [{
                stacked: true
            }],
            yAxes: [{
                stacked: true
            }]
          },
          responsive: true,
          legend: {
            display: false,
          },
          title: {
            display: true,
            text: 'Penghematan Energi'
          }
        }
    });
    // END Produk
    
    // CHART Dampak Regulasi (Mitigasi Emisi)
    var data = {
        labels: ["MT C02"],
        datasets: [
            {
              label: 'AC',
              data: [10],
              backgroundColor: "#7ba7b0"
            },
            {
              label: 'Kulkas',
              data: [8],
              backgroundColor: "#f39800"
            }
        ]
    };
    var barDampakRegulasiEmisi = document.getElementById("barDampakRegulasiEmisi");
    new Chart(barDampakRegulasiEmisi, {
        type: 'bar',
        data: data,
        options: {
          scales: {
            xAxes: [{
                stacked: true
            }],
            yAxes: [{
                stacked: true
            }]
          },
          responsive: true,
          legend: {
            display: false,
          },
          title: {
            display: true,
            text: 'Mitigasi Emisi'
          }
        }
    });
    // END Produk

    $('.linkDetail').click(function(){
      var titleName = $(this).data('name');
      $("#titleName").text(titleName);
    });
</script>
@endsection
@extends('layouts.master')
@section('title-menu', 'Dashboard')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/vendor/leaflet/leaflet.css')}}" type="text/css">
<link rel="stylesheet" type="text/css" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.css" />
<link rel="stylesheet" type="text/css" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.Default.css" />
<link rel="stylesheet" href="{{asset('assets/vendor/chartjs/dist/Chart.min.css')}}" type="text/css">
@endsection
@section('contents')
<div class="row">
  <div class="col-xl-6 col-md-6">
    <div class="card">
      <div class="card-header py-2">
        Produk
      </div>
      <div class="card-body p-1">
        <canvas id="barJumlahProduk" height="160"></canvas>
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
  </div>
</div>
<div class="row">
  
</div>
<div class="row">
  <div class="col-md-6">
    <div class="card">
      <div class="card-header py-2">
        Persentase Kepatuhan
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
  </div>
  <div class="col-md-6">
    <div class="card">
      <div class="card-header py-1">
        Peta Sebaran Inspeksi
      </div>
      <div id="map" style="height: 383px"></div>
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
      marker.bindPopup(`<div class="text-center">Toko<br><a style="text-decoration: underline;" href="#">${title}</a></div>`);
      markers.addLayer(marker);
    }

    map.addLayer(markers);
    // end map

    //chart Persentase Kepatuhan
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
    // END Persentase Kepatuhan

    // CHART Produk
    var data = {
        labels: ["AC","Kulkas"],
        datasets: [
            {
              label: 'Total Produk',
              data: [900, 50],
              backgroundColor: "#7ba7b0"
            },
            {
              label: 'Produk Inspeksi',
              data: [7, 8],
              backgroundColor: "#f39800"
            }
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
          plugins: {
            legend: {
              position: 'right',
            },
            title: {
              display: true,
              text: 'Chart.js Horizontal Bar Chart'
            }
          }
        }
    });
    // END Produk
</script>
@endsection
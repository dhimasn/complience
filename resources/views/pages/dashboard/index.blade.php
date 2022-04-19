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
  <div class="col-xl-3 col-md-6">
    <div class="card card-stats">
      <!-- Card body -->
      <div class="card-body">
        <div class="row">
          <div class="col">
            <h5 class="card-title text-uppercase text-muted mb-0">Jumlah Produsen Dalam Negeri</h5>
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
  </div>
  <div class="col-xl-3 col-md-6">
    <div class="card card-stats">
      <!-- Card body -->
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
  </div>
  <div class="col-xl-3 col-md-6">
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
  <div class="col-xl-3 col-md-6">
    <div class="card card-stats">
      <!-- Card body -->
      <div class="card-body">
        <div class="row">
          <div class="col">
            <h5 class="card-title text-uppercase text-muted mb-0">Pengawas Lapangan</h5>
            <span class="h2 font-weight-bold mb-0">{{$totalPengawasLapangan}}</span>
          </div>
          <div class="col-auto">
            <div class="icon icon-shape bg-gradient-orange text-white rounded-circle shadow">
              <i class="ni ni-chart-pie-35"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-6">
    <div class="card">
      <div class="card-header py-2">
        Persentase Kepatuhan
      </div>
      <div class="card-body p-1">
        <canvas id="chartVerifikasi" height="220"></canvas>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header py-1">
        Peta Sebaran Inspeksi
      </div>
      <div id="map" style="height: 500px"></div>
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
      var addressPoints = [
        @foreach($dataForm as $form)
          [{{$form['lat']}}, {{$form['long']}}, "{{$form['lokasi_pengawasan']}}"],
        @endforeach
      ];
      var map = L.map('map').setView([-2.000373, 116.526913], 5);

      L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}', {
      maxZoom: 20,
      subdomains: ['mt0', 'mt1', 'mt2', 'mt3'],
      attribution: '&copy; <a href="https://www.google.com">Google Maps</a> contributors'
      }).addTo(map);
     
      var markers = L.markerClusterGroup();
		
      for (var i = 0; i < addressPoints.length; i++) {
        var a = addressPoints[i];
        var title = a[2];
        var marker = L.marker(new L.LatLng(a[0], a[1]), { title: title });
        marker.bindPopup(title);
        markers.addLayer(marker);
      }

      map.addLayer(markers);
      
      var data = {
          labels: ["Sesuai","Tidak Sesuai"],
          datasets: [
              {
                  data: [{{$ketidaksesuai['sesuai']}}, {{$ketidaksesuai['tidak_sesuai']}}],
                  backgroundColor: ["#7ba7b0","#f39800"]
              }]
      };
      var chartVerifikasi = document.getElementById("chartVerifikasi");
      var pieChart = new Chart(chartVerifikasi, {
          type: 'pie',
          data: data,
          options: {
            pieceLabel: {
              render: 'value' //show values
            }
          }
      });
</script>
@endsection
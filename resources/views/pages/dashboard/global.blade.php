@extends('layouts.master')
@section('title-menu', 'Dashboard')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/vendor/chartjs/dist/Chart.min.css')}}" type="text/css">
@endsection
@section('contents')
<div class="row">
  <div class="col-xl-12 col-md-12">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-body p-1">
            <div class="row">
              <div class="col-6">
                <canvas id="barUjiPetik" height="190"></canvas>
              </div>
              <div class="col-6">
                <canvas id="barInspeksiVisual" height="190"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-body p-1">
            <div class="row">
              <div class="col-6">
                <canvas id="lineEnergi" height="190"></canvas>
              </div>
              <div class="col-6">
                <canvas id="lineEmisi" height="190"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
@section('scripts')
<script src="{{asset('assets/vendor/chartjs/dist/Chart.min.js')}}"></script>
<script src="{{asset('assets/vendor/chartjs/dist/plugin-labels.js')}}"></script>
</script>
<script>
  // CHART barUjiPetik
  var data = {
      labels: ["2022"],
      datasets: [
          {
            label: 'AC',
            data: [10],
            backgroundColor: "#53c43e"
          },
          {
            label: 'Kulkas',
            data: [20],
            backgroundColor: "#3da1bd"
          },
          {
            label: 'Lampu LED',
            data: [8],
            backgroundColor: "#f39800"
          },
          {
            label: 'Penanak Nasi',
            data: [12],
            backgroundColor: "#dc604a"
          },
          {
            label: 'Kipas Angin',
            data: [5],
            backgroundColor: "#da73a9"
          },
          {
            label: 'Lampu CFL',
            data: [24],
            backgroundColor: "#ffee00"
          },
      ]
  };
  var barUjiPetik = document.getElementById("barUjiPetik");
  new Chart(barUjiPetik, {
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
          position: 'right',
        },
        title: {
          display: true,
          text: 'Uji Petik'
        }
      }
  });
  // END barUjiPetik
  
  // CHART barInspeksiVisual
  var data = {
      labels: ["2022"],
      datasets: [
          {
            label: 'AC',
            data: [10],
            backgroundColor: "#53c43e"
          },
          {
            label: 'Kulkas',
            data: [20],
            backgroundColor: "#3da1bd"
          },
          {
            label: 'Lampu LED',
            data: [8],
            backgroundColor: "#f39800"
          },
          {
            label: 'Penanak Nasi',
            data: [12],
            backgroundColor: "#dc604a"
          },
          {
            label: 'Kipas Angin',
            data: [5],
            backgroundColor: "#da73a9"
          },
          {
            label: 'Lampu CFL',
            data: [24],
            backgroundColor: "#ffee00"
          },
      ]
  };
  var barInspeksiVisual = document.getElementById("barInspeksiVisual");
  new Chart(barInspeksiVisual, {
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
          position: 'right',
        },
        title: {
          display: true,
          text: 'Inspeksi Visual'
        }
      }
  });
  // END barInspeksiVisual

  // CHART lineEnergi
  var data = {
      labels: ["2022"],
      datasets: [
        {
            label: 'AC',
            data: [0],
            backgroundColor: "#53c43e"
          },
          {
            label: 'Kulkas',
            data: [0],
            backgroundColor: "#3da1bd"
          },
          {
            label: 'Lampu LED',
            data: [0],
            backgroundColor: "#f39800"
          },
          {
            label: 'Penanak Nasi',
            data: [0],
            backgroundColor: "#dc604a"
          },
          {
            label: 'Kipas Angin',
            data: [0],
            backgroundColor: "#da73a9"
          },
          {
            label: 'Lampu CFL',
            data: [0],
            backgroundColor: "#ffee00"
          },
      ]
  };
  var lineEnergi = document.getElementById("lineEnergi");
  new Chart(lineEnergi, {
      type: 'line',
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
          position: 'right',
        },
        title: {
          display: true,
          text: 'Penghematan Energi (GWh)'
        }
      }
  });
  // END lineEnergi

  // CHART lineEmisi
  var data = {
      labels: ["2022"],
      datasets: [
          {
            label: 'AC',
            data: [0],
            backgroundColor: "#53c43e"
          },
          {
            label: 'Kulkas',
            data: [0],
            backgroundColor: "#3da1bd"
          },
          {
            label: 'Lampu LED',
            data: [0],
            backgroundColor: "#f39800"
          },
          {
            label: 'Penanak Nasi',
            data: [0],
            backgroundColor: "#dc604a"
          },
          {
            label: 'Kipas Angin',
            data: [0],
            backgroundColor: "#da73a9"
          },
          {
            label: 'Lampu CFL',
            data: [0],
            backgroundColor: "#ffee00"
          },
      ]
  };
  var lineEmisi = document.getElementById("lineEmisi");
  new Chart(lineEmisi, {
      type: 'line',
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
          position: 'right',
        },
        title: {
          display: true,
          text: 'Mitigasi Emisi (MTCO2)'
        }
      }
  });
  // END lineEmisi
</script>
@endsection
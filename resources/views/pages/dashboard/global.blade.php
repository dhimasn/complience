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
          <div class="card-header py-2">
            TINGKAT KEPATUHAN LABEL PERALATAN PENGGUNA ENERGI NASIONAL
          </div>
          <div class="card-body p-1">
            <div class="col-md-12">
              <table class="table table-bordered">
                <tr>
                  <td></td>
                  <td>2020</td>
                  <td>2021</td>
                  <td>2022</td>
                </tr>
                <tr>
                  <td>Lampu CFL</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                </tr>
                <tr>
                  <td>AC</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                </tr>
                <tr>
                  <td>Kulkas</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                </tr>
                <tr>
                  <td>Kipas Angin</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                </tr>
                <tr>
                  <td>Penanak Nasi</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                </tr>
                <tr>
                  <td>Lampu LED</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                  <td class="success">0%</td>
                </tr>
              </table>
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
            backgroundColor: "#ee7d31"
          },
          {
            label: 'Kulkas',
            data: [20],
            backgroundColor: "#a4a6a3"
          },
          {
            label: 'Lampu LED',
            data: [8],
            backgroundColor: "#72ae42"
          },
          {
            label: 'Penanak Nasi',
            data: [12],
            backgroundColor: "#5a9ad7"
          },
          {
            label: 'Kipas Angin',
            data: [5],
            backgroundColor: "#fec200"
          },
          {
            label: 'Lampu CFL',
            data: [24],
            backgroundColor: "#4371c6"
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
            backgroundColor: "#ee7d31"
          },
          {
            label: 'Kulkas',
            data: [20],
            backgroundColor: "#a4a6a3"
          },
          {
            label: 'Lampu LED',
            data: [8],
            backgroundColor: "#72ae42"
          },
          {
            label: 'Penanak Nasi',
            data: [12],
            backgroundColor: "#5a9ad7"
          },
          {
            label: 'Kipas Angin',
            data: [5],
            backgroundColor: "#fec200"
          },
          {
            label: 'Lampu CFL',
            data: [24],
            backgroundColor: "#4371c6"
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
            backgroundColor: "#ee7d31",
            borderColor: "#ee7d31",
            fill: true
          },
          {
            label: 'Kulkas',
            data: [0],
            backgroundColor: "#a4a6a3",
            borderColor: "#a4a6a3",
            fill: true
          },
          {
            label: 'Lampu LED',
            data: [0],
            backgroundColor: "#f39800",
            borderColor: "#f39800",
            fill: true
          },
          {
            label: 'Penanak Nasi',
            data: [0],
            backgroundColor: "#72ae42",
            borderColor: "#72ae42",
            fill: true
          },
          {
            label: 'Kipas Angin',
            data: [0],
            backgroundColor: "#fec200",
            borderColor: "#fec200",
            fill: true
          },
          {
            label: 'Lampu CFL',
            data: [0],
            backgroundColor: "#4371c6",
            borderColor: "#4371c6",
            fill: true
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
            backgroundColor: "#ee7d31",
            borderColor: "#ee7d31",
            fill: true
          },
          {
            label: 'Kulkas',
            data: [0],
            backgroundColor: "#a4a6a3",
            borderColor: "#a4a6a3",
            fill: true
          },
          {
            label: 'Lampu LED',
            data: [0],
            backgroundColor: "#f39800",
            borderColor: "#f39800",
            fill: true
          },
          {
            label: 'Penanak Nasi',
            data: [0],
            backgroundColor: "#72ae42",
            borderColor: "#72ae42",
            fill: true
          },
          {
            label: 'Kipas Angin',
            data: [0],
            backgroundColor: "#fec200",
            borderColor: "#fec200",
            fill: true
          },
          {
            label: 'Lampu CFL',
            data: [0],
            backgroundColor: "#4371c6",
            borderColor: "#4371c6",
            fill: true
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
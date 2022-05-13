@extends('layouts.master')
@section('title-menu', 'Dashboard')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/vendor/leaflet/leaflet.css')}}" type="text/css">
<link rel="stylesheet" type="text/css" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.css" />
<link rel="stylesheet" type="text/css"
  href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.Default.css" />
<link rel="stylesheet" href="{{asset('assets/vendor/chartjs/dist/Chart.min.css')}}" type="text/css">
<style>
    .custom-legend{
      display: flex;
      justify-content: center;
    }
   .custom-legend .orange
   {
    background-color: #f39800;
    height: 13px;
    width: 31px;
    margin-right: 7px;
   }       
   .custom-legend .blue
   {
    background-color: #7ba7b0;
    height: 13px;
    width: 31px;
    margin-right: 7px;
   }       
   .legend{
     display: flex;
     align-items: center;
     margin-right: 20px;
   }
</style>
@endsection
@section('contents')
<div class="row">
  <div class="col-xl-12 col-md-12">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-md-12">
            <form action="" method="GET">
              <div class="form-group row">
                <label class="col-sm-2">Peralatan</label>
                <div class="col-sm-3">
                  <select name="pelaratan" class="form-control form-complience">
                    <option value="2">AC</option>
                    <option disabled value="">Kulkas</option>
                    <option disabled value="">Kipas Angin</option>
                    <option disabled value="">Penanak Nasi</option>
                    <option disabled value="1">Lampu CFL</option>
                    <option disabled value="">Lampu LED</option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2">Periode</label>
                <div class="col-sm-9">
                  <div class="row">
                    <div class="col-md-1">
                      <input type="radio" name="periode" value="tahun" {{$periode == 'tahun' ? 'checked' : ''}}>
                    </div>
                    <div class="col-md-1">
                      <label class="">Tahun</label>
                    </div>
                    <div class="col-md-3">
                      <input type="number" placeholder="Tahun" name="tahun" value="{{$tahun}}" class="form-control form-complience">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-1">
                      <input type="radio" name="periode" value="date" {{$periode == 'date' ? 'checked' : ''}}>
                    </div>
                    <div class="col-md-1">
                      <label class="">Dari</label>
                    </div>
                    <div class="col-md-3">
                      <input type="date" name="dari" class="form-control form-complience" value="{{$dariSelected}}">
                    </div>
                    <div class="col-md-1">
                      <label class="">Hingga</label>
                    </div>
                    <div class="col-md-3">
                      <input type="date" name="hingga" class="form-control form-complience" value="{{$hinggaSelected}}">
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2"></label>
                <div class="col-sm-3">
                  <button class="btn btn-yellow button-comp" submit>
                    Filter
                  </button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-xl-12 col-md-12">
    <div class="card">
      <div class="card-header py-2">
        <a data-toggle="tooltip" data-placement="top" title="Ringkasan informasi pasar untuk produk dan rentang periode yang dipilih."><i class="fas fa-info-circle"></i></a>
        Market Insights
      </div>
      <div class="card-body">
        <div class="row">
          <div class="col-md-4">
            <table>
              <tr>
                <td align="right"><h5 class="card-title text-uppercase text-muted mb-0">JUMLAH PERUSAHAAN</h5></td>
                <td><span class="h2 font-weight-bold mb-0 ml-4">35</span></td>
              </tr>
            </table>
          </div>
          <div class="col-md-4">
            <table>
              <tr>
                <td align="right"><h5 class="card-title text-uppercase text-muted mb-0">JUMLAH PRODUSEN DALAM NEGERI</h5></td>
                <td><span class="h2 font-weight-bold mb-0 ml-4">35</span></td>
              </tr>
              <tr>
                <td align="right"><h5 class="card-title text-uppercase text-muted mb-0">JUMLAH UNIT PRODUKSI TERLAPOR</h5></td>
                <td><span class="h2 font-weight-bold mb-0 ml-4">35</span></td>
              </tr>
            </table>
          </div>
          <div class="col-md-4">
            <table>
              <tr>
                <td align="right"><h5 class="card-title text-uppercase text-muted mb-0">JUMLAH IMPORTIR</h5></td>
                <td><span class="h2 font-weight-bold mb-0 ml-4">35</span></td>
              </tr>
              <tr>
                <td align="right"><h5 class="card-title text-uppercase text-muted mb-0">JUMLAH UNIT IMPOR TERLAPOR</h5></td>
                <td><span class="h2 font-weight-bold mb-0 ml-4">35</span></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header py-2">
        <a data-toggle="tooltip" data-placement="top" title="Rangkuman kegiatan pengawasan yang telah dilakukan untuk produk dan rentang periode yang dipilih."><i class="fas fa-info-circle"></i></a>
        Compliance Insights
      </div>
      <div class="card-body p-1">
        <div class="row">
          <div class="col-md-6">
            <canvas id="barUjiPetikDate" height="250"></canvas>
            <canvas id="barUjiPetik" height="135"></canvas>
          </div>
          <div class="col-md-6">
            <canvas id="barInspeksiVisualDate" height="250"></canvas>
            <canvas id="barInspeksiVisual" height="135"></canvas>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-xl-12 col-md-12">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header py-1">
            <a data-toggle="tooltip" data-placement="top" title="Tampilan sebaran inspeksi yang telah dilakukan pada lokasi ritel untuk produk dan rentang periode yang dipilih. Pengguna dapat mengakses kegiatan inspeksi per lokasi ritel dengan mengklik label yang tampil"><i class="fas fa-info-circle"></i></a>
            Peta Sebaran Kegiatan Inspeksi
          </div>
          <div id="map" style="height: 383px"></div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-xl-12 col-md-12">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header py-2">
            <a data-toggle="tooltip" data-placement="top" title="Daftar model yang telah atau sedang melalui verifikasi uji petik untuk produk dan rentang periode yang dipilih"><i class="fas fa-info-circle"></i></a>
            Status Uji Petik
          </div>
          <div class="table-responsive">
            <!-- Projects table -->
            <table class="table align-items-center table-flush">
              <thead class="thead-light">
                <tr>
                  <th scope="col">Produk</th>
                  <th scope="col">Model</th>
                  <th scope="col">Merek</th>
                  <th scope="col">Pengawas</th>
                  <th scope="col">Lab</th>
                  <th scope="col">Status</th>
                  <th scope="col">Tanggal</th>
                </tr>
              </thead>
              <tbody>
                @foreach ($statusUjiPetiks as $statusUjiPetik)
                  <tr>
                    <th scope="row">
                      AC
                    </th>
                    <td>
                      {{$statusUjiPetik->model}}
                    </td>
                    <td>
                      {{$statusUjiPetik->merek}}
                    </td>
                    <td>
                      {{$statusUjiPetik->pengawas->name}}
                    </td>
                    <td>
                      {{$statusUjiPetik->lab->nama ?? ''}}
                    </td>
                    <td>
                      {{$status[$statusUjiPetik->status] ?? ''}}
                    </td>
                    <td>
                      {{$statusUjiPetik->updated_at}}
                    </td>
                  </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-xl-12 col-md-12">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header py-2">
            <a data-toggle="tooltip" data-placement="top" title="Tampilan hasil perhitungan penghematan energi dan mitigasi emisi untuk produk dan rentang periode yang dipilih."><i class="fas fa-info-circle"></i></a>
             Dampak Regulasi
          </div>
          <div class="card-body p-1">
            <div class="row">
              <div class="col-6">
                <canvas id="barDampakRegulasiEnergi" height="190"></canvas>
              </div>
              <div class="col-6">
                <canvas id="barDampakRegulasiEmisi" height="190"></canvas>
              </div>
            </div>
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
        <h5 class="modal-title">Hasil Inspeksi</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="table-responsive px-3">
        <table class="table align-items-center table-flush table-hasil-inspeksi">
          <thead class="thead-light">
            <tr>
              <th scope="col">No SHE</th>
              <th scope="col">Model</th>
              <th scope="col">Merek</th>
              <th scope="col">Tipe Inspeksi</th>
              <th scope="col">Kepatuhan LTHE</th>
              <th scope="col">Deviasi Uji Petik (%)</th>
              <th scope="col">Status</th>
              <th scope="col">Tanggal Inspeksi</th>
            </tr>
          </thead>
          <tbody>
            
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
<script src="https://cdn.plot.ly/plotly-2.12.1.min.js"></script>
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
      marker.bindPopup(`<div class="text-center">Toko<br><a style="text-decoration: underline;" class="linkDetail" data-name="${title}" href="#">${title}</a></div>`);
      markers.addLayer(marker);
    }

    map.addLayer(markers);
    // end map

    //chart Kepatuhan Uji petik
    // var data = {
    //     labels: ["Sesuai","Tidak Sesuai"],
    //     datasets: [
    //         {
    //             data: [{{$ketidaksesuai['sesuai']}}, {{$ketidaksesuai['tidak_sesuai']}}],
    //             backgroundColor: ["#7ba7b0","#f39800"]
    //         }]
    // };
    // var chartVerifikasi = document.getElementById("chartVerifikasi");
    // new Chart(chartVerifikasi, {
    //     type: 'pie',
    //     data: data,
    //     options: {
    //       pieceLabel: {
    //         render: 'value' //show values
    //       },
    //       title: {
    //         display: true,
    //         text: 'AC'
    //       }
    //     }
    // });
    // END Kepatuhan Uji petik

    // CHART Kepatuhan Inspeksi Visual
    var data = {
        labels: [
          "Label Kabur/Tidak terlihat/Rusak",
          "Desain Label Tidak Sesuai", 
          "Label Palsu", 
          "Label Tidak Sesuai Dengan Produk",
          "Tidak ada label"
        ],
        datasets: [
            {
              label: 'AC',
              data: [
                {{$kepatuhan['1']}}, 
                {{$kepatuhan['2']}},
                {{$kepatuhan['3']}},
                {{$kepatuhan['4']}},
                {{$kepatuhan['5']}}
              ],
              backgroundColor: ["#36a2eb","#ff6384","#4bc0c0","#ff9f40","#f39800"]
            }
        ]
    };
    var barInspeksiVisual = document.getElementById("barInspeksiVisual");
    new Chart(barInspeksiVisual, {
        type: 'doughnut',
        data: data,
        options: {
          pieceLabel: {
            render: 'value' //show values
          },
          responsive: true,
          legend: {
            position: 'right',
          }
        }
    });
    // END Kepatuhan Inspeksi Visual

    // CHART Produk
    // var yearNow = new Date().getFullYear();
    // var data = {
    //     labels: ["AC","Kulkas"],
    //     datasets: [
    //         {
    //           label: 'Produk Inspeksi '+yearNow,
    //           data: [7, 0],
    //           backgroundColor: "#f7dfa0"
    //         },
    //     ]
    // };
    // var barJumlahProduk = document.getElementById("barJumlahProduk");
    // new Chart(barJumlahProduk, {
    //     type: 'horizontalBar',
    //     data: data,
    //     options: {
    //       elements: {
    //         bar: {
    //           borderWidth: 2,
    //         }
    //       },
    //       responsive: true,
    //     }
    // });
    // END Produk

    // CHART Dampak Regulasi (Penghematan energi)
    var data = {
        labels: ["GWh"],
        datasets: [
            {
              label: 'AC',
              data: [0],
              backgroundColor: "#7ba7b0"
            },
            {
              label: 'Kulkas',
              data: [0],
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
              data: [0],
              backgroundColor: "#7ba7b0"
            },
            {
              label: 'Kulkas',
              data: [0],
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

    // CHART barUjiPetikDate
    var data = {
        labels: [
          @foreach($dataList as $list)
            "{{$list}}",
          @endforeach
        ],
        datasets: [
            {
              label: 'Sesuai',
              data: [10],
              backgroundColor: "#ffee00"
            },
            {
              label: 'Tidak Sesuai',
              data: [8],
              backgroundColor: "#c7c7c7"
            }
        ]
    };
    var barUjiPetikDate = document.getElementById("barUjiPetikDate");
    new Chart(barUjiPetikDate, {
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
            position: 'bottom'
          },
          title: {
            display: true,
            text: 'Uji Petik'
          }
        }
    });
    // END barUjiPetikDate
    // CHART barUjiPetik
    var data = {
        labels: ["Record 1","Record 2","Record 3"],
        datasets: [
            {
              label: 'Label',
              data: [4,2,7],
              borderColor: "#7ba7b0",
              backgroundColor: "#7ba7b0",
              fill: false,
              pointStyle: 'circle',
              pointRadius: 8,
              pointHoverRadius: 10,
              showLine: false,
              
            },
            {
              label: 'Uji Petik',
              data: [1,3,2],
              borderColor: "#f39800",
              backgroundColor: "#f39800",
              fill: false,
              pointStyle: 'circle',
              pointRadius: 8,
              pointHoverRadius: 10,
              showLine: false,
            }
        ]
    };
    var barUjiPetik = document.getElementById("barUjiPetik");
    new Chart(barUjiPetik, {
        type: 'line',
        data: data,
        options: {
          legend: {
            position: 'bottom'
          },
          title: {
            display: true,
            text: ''
          },
          scales : {
              xAxes : [ {
                  gridLines : {
                      display : false
                  }
              } ]
          }
        }
    });
    // END barUjiPetik

    // CHART barInspeksiVisualDate
    var data = {
        labels: [
          @foreach($dataList as $list)
            "{{$list}}",
          @endforeach
        ],
        datasets: [
            {
              label: 'Sesuai',
              data: [10],
              backgroundColor: "#ffee00"
            },
            {
              label: 'Tidak Sesuai',
              data: [8],
              backgroundColor: "#c7c7c7"
            }
        ]
    };
    var barInspeksiVisualDate = document.getElementById("barInspeksiVisualDate");
    new Chart(barInspeksiVisualDate, {
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
            position: 'bottom'
          },
          title: {
            display: true,
            text: 'Inspeksi Visual'
          }
        }
    });
    // END barInspeksiVisualDate

    $(document).on("click", ".linkDetail", function(){
      var name = $(this).data('name');
      $("#modalDetailToko").modal('show');
      $(".table-hasil-inspeksi tbody").empty();
      $(".table-hasil-inspeksi tbody").append('<tr><td align="center" colspan="8">Loading ...<td></tr>');
      $.ajax({
        url: "{{url('/')}}/api/v2/"+name,
        type: 'GET',
        dataType: 'json', // added data type
        success: function(res) {
          $(".table-hasil-inspeksi tbody").empty();
          var resp = res.comp;
          for (var key in resp) {
              var obj = resp[key];
              $(".table-hasil-inspeksi tbody").append(
                '<tr>'
                  +`<td>${obj.no_she}</td>`
                  +`<td>${obj.model}</td>`
                  +`<td>${obj.merek}</td>`
                  +`<td>${obj.tipe}</td>`
                  +`<td>${obj.kepatuhan}</td>`
                  +`<td>${obj.deviasi}</td>`
                  +`<td>${obj.status}</td>`
                  +`<td>${obj.datetime_offline}</td>`
                +'</tr>'
              );
          };
        }
      });
    });
</script>
@endsection
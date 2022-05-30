@extends('layouts.master')
@section('title-menu', 'High Risk Produk')
@section('contents')
<div class="row">
  <div class="col-xl-12 col-md-12">
    <div class="card">
      <div class="card-body p-2">
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
              
               <!--
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
              </div> -->

              <div class="form-group row">
                <label class="col-sm-2">Kapasitas Pendinginan</label>
                <div class="col-sm-3">
                  <select name="kapasitas" class="form-control form-complience">
                    <option value="">{SELECT}</option>
                    <option value="0.5">½ PK</option>
                    <option value="0.75">¾ PK</option>
                    <option value="1">1 PK</option>
                    <option value="1.5">1 ½ PK</option>
                    <option value="2">2 PK</option>
                    <option value="2.5">2 ½ PK</option>
                    <option value="3">3 PK</option>
                  </select>
                </div>
              </div> 
             

              <div class="form-group row">
                <label class="col-sm-2">Tipe Kompressor</label>
                <div class="col-sm-3">
                  <select name="kompressor" class="form-control form-complience">
                    <option value="">{SELECT}</option>
                    <option value="Inverter">Inverter</option>
                    <option value="Non-Inverter">Non Inverter</option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2">Tingkat Bintang</label>
                <div class="col-sm-3">
                  <select name="bintang" class="form-control form-complience">
                    <option value="">{SELECT}</option>
                    <option value="1">satu</option>
                    <option value="2">dua</option>
                    <option value="3">tiga</option>
                    <option value="4">empat</option>
                    <option value="5">lima</option>
                  </select>
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
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body p-2">
      <div class="text-left mb-2">
        <a class="btn btn-sm btn-primary" href="{{route('highrisk.export')}}">export (csv)</a> 
      </div>
        <div class="row">
          <div class="col-md-12">
            <table class="table table-comp table-responsive">
              <thead class="thead-comp">
                <th>Nomor SHE</th>
                <th>Model Produk</th>
                <th>Merek</th>
                <th>Star Rating (1-5)</th>
                <th>EER (Btu/h/W)</th>
                <th>CSPF (Wh/Wh)</th>
                <th>Kapasitas Pendinginan (BTU/hr)</th>
                <th>Commpressor Type</th>
                <th>Risk Rating</th>
                <th>Verification Result</th>
                <th>Produk/Import Volume</th>
                <th>Detail</th>
              </thead>
              <tbody>
                @foreach ($highrisk as $item)
                <tr>
                  <td><a href="">{{$item['nomor_she']}}</a></td>
                  <td>{{$item['model']}}</td>
                  <td>{{$item['merek']}}</td>
                  <td>{{$item['stars_rating']}}</td>
                  <td>{{$item['eer']}}</td>
                  <td>{{$item['cspf']}}</td>
                  <td>{{$item['kapasitas']}}</td>
                  <td>{{$item['compressor_type']}}</td>
                  <td>{{$item['risk_rating']}}</td>
                  <td>{{$item['verification_result']}}</td>
                  <td>{{$item['volume_produk']}}</td>
                  <td><a class="btn btn-sm btn-info" href="{{route('highrisk.detail', $item['nomor_she'])}}">detail</a></td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
@section('scripts')
<script>
$(document).ready( function () {
    $('table').DataTable({ "order": [[ 8, "desc" ]] });
});
</script>
@endsection
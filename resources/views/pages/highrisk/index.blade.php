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
              <div class="form-group row">
                <label class="col-sm-2">Periode</label>
                <div class="col-sm-9">
                  <div class="row">
                    <div class="col-md-1">
                      <input type="radio" name="periode" value="tahun">
                    </div>
                    <div class="col-md-1">
                      <label class="">Tahun</label>
                    </div>
                    <div class="col-md-3">
                      <input type="number" placeholder="Tahun" name="tahun" value="" class="form-control form-complience">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-1">
                      <input type="radio" name="periode" value="date" }>
                    </div>
                    <div class="col-md-1">
                      <label class="">Dari</label>
                    </div>
                    <div class="col-md-3">
                      <input type="date" name="dari" class="form-control form-complience" value="">
                    </div>
                    <div class="col-md-1">
                      <label class="">Hingga</label>
                    </div>
                    <div class="col-md-3">
                      <input type="date" name="hingga" class="form-control form-complience" value="">
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2">Kapasitas Pendinginan</label>
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
                <label class="col-sm-2">Tipe Kompressor</label>
                <div class="col-sm-3">
                  <select name="pelaratan" class="form-control form-complience">
                    <option value="inverter">Inverter</option>
                    <option disabled value="non-inverter">Non Inverter</option>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2">Tingkat Bintang</label>
                <div class="col-sm-3">
                  <select name="pelaratan" class="form-control form-complience">
                    <option value="1">satu</option>
                    <option disabled value="2">dua</option>
                    <option disabled value="3">tiga</option>
                    <option disabled value="4">empat</option>
                    <option disabled value="5">lima</option>
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
      <!-- <div class="text-left mb-2">
        <a class="btn btn-sm btn-primary" href="{{route('highrisk.sync')}}">sync</a> 
      </div> -->
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
    $('table').DataTable();
} );
</script>
@endsection
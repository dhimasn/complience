@extends('layouts.master')
@section('title-menu', 'Pengisian Formulir 4')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/vendor/select2/dist/css/select2.min.css')}}" type="text/css">
@endsection
@section('contents')
<div class="header-body">
  <div class="row align-items-center pb-1">
    <div class="col-lg-12">
      <h6 class="h2 text-black d-inline-block mb-0">Detil Produk</h6>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-md-12">
            <div class="form-group">
              <label class="form-control-label">Nomor SHE</label>
              <select name="nomor_she" id="" class="form-control form-complience select2">
                <option value="1">1</option>
                <option value="1">1</option>
                <option value="1">1</option>
              </select>
              {{-- <input class="form-control form-complience" placeholder="" value="" type="text"> --}}
            </div>
            <div class="form-group">
              <label class="form-control-label">Merek</label>
              <input class="form-control form-complience" placeholder="" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Kapasitas Pengenal (PK)</label>
              <input class="form-control form-complience" placeholder="" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Teknologi</label>
              <div class="">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" value="option1">
                  <label class="form-check-label">Standard</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" value="option2">
                  <label class="form-check-label">Fixed Speed</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" value="option3">
                  <label class="form-check-label">Inverter</label>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label class="form-control-label">Manufaktur / Importir</label>
              <input class="form-control form-complience" placeholder="" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Kode atau Tanggal Produksi</label>
              <input class="form-control form-complience" placeholder="" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Negara Asal</label>
              <input class="form-control form-complience" placeholder="" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Harga</label>
              <input class="form-control form-complience" placeholder="" value="" type="text">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="header-body">
  <div class="row align-items-center pb-1">
    <div class="col-lg-12">
      <h6 class="h2 text-black d-inline-block mb-0">Pemeriksaan Visual + Entri Data Ketidaksesuaian</h6>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-md-12">
            <div class="form-group">
              <label class="form-control-label">Lampirkan foto LTHE</label>
              <input class="form-control" placeholder="" value="" type="file">
            </div>
            <div class="form-group">
              <label class="form-control-label">Nomor SHE</label>
              <input class="form-control form-complience" placeholder="Masukan Jawaban" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Jumlah Bintang</label>
              <input class="form-control form-complience" placeholder="Masukan Jawaban" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Nilai Efisiensi Energi (EER/CSPF)</label>
              <input class="form-control form-complience" placeholder="Masukan Jawaban" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Model Unit Dalam</label>
              <input class="form-control form-complience" placeholder="Masukan Jawaban" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Model Unit Luar</label>
              <input class="form-control form-complience" placeholder="Masukan Jawaban" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Daya</label>
              <input class="form-control form-complience" placeholder="Masukan Jawaban" value="" type="text">
            </div>
            <div class="form-group">
              <label class="form-control-label">Kapasitas Pendingin</label>
              <input class="form-control form-complience" placeholder="Masukan Jawaban" value="" type="text">
            </div>
          </div>
          <div class="col-md-8 mx-auto text-center">
            <table class="table align-items-center table-bordered">
              <thead class="thead-light">
                <th>Lab Uji Tujuan</th>
                <th>Tanggal Pengujian</th>
              </thead>
              <tbody>
                <tr>
                  <td>Qualis</td>
                  <td><a href="http://">Klik Disini</a></td>
                </tr>
                <tr>
                  <td>TUV Rheinland</td>
                  <td><a href="http://">Klik Disini</a></td>
                </tr>
                <tr>
                  <td>B2TkE-BRIN</td>
                  <td><a href="http://">Klik Disini</a></td>
                </tr>
                <tr>
                  <td>B4T-Kemenperin</td>
                  <td><a href="http://">Klik Disini</a></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <div class="text-center mb-6">
      <button class="btn btn-yellow button-comp" href="http://">
        Kirim untuk Aktivasi Formulir di Lab Uji
      </button>
    </div>
  </div>
</div>
</div>
@endsection
@section('scripts')
<script src="{{asset('assets/vendor/select2/dist/js/select2.full.min.js')}}"></script>
<script>
  $(document).ready(function() {
    $('.select2').select2();
});
</script>
@endsection
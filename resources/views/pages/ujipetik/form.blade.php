@extends('layouts.master')
@section('title-menu', 'Uji Petik | Formulir 2')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/vendor/select2/dist/css/select2.min.css')}}" type="text/css">
<style>
  .form-complience{
    border-top: 1px solid #fff !important;
    border-right: 1px solid #fff !important;
    border-left: 1px solid #fff !important;
    border-bottom: 1px solid #707070 !important;
    height: 25px !important;
    padding: 0 !important;
}
</style>
@endsection
@section('contents')
<div class="header-body">
  <div class="row align-items-center pb-1">
    <div class="col-lg-12">
      <h6 class="h2 text-black d-inline-block mb-0">Informasi Umum</h6>
    </div>
  </div>
</div>
<form action="{{route('formulir4.store')}}" method="post" enctype="multipart/form-data">
  @csrf
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="form-control-label">Record ID</label>
                <input class="form-control form-complience" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Laboratorium Pengujian</label>
                <input class="form-control form-complience" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Tanggal & Waktu Inspeksi Sampel</label>
                <input class="form-control form-complience" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nama Petugas Pemeriksa</label>
                <input class="form-control form-complience" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nama Petugas Persetujuan</label>
                <input class="form-control form-complience" type="text">
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
        <h6 class="h2 text-black d-inline-block mb-0">Detail Produk</h6>
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
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Merek</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="11" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="12" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Teknologi</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="13" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Manufaktur / Importir</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="14" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kode atau Tanggal Produksi</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="15" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Negara Asal</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="16" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Informasi sampel sudah sesuai</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="16" value="" type="text">
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
        <h6 class="h2 text-black d-inline-block mb-0">Cek Fisik, Unit Indoor</h6>
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
                <label class="form-control-label">Tst</label><br>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" value="option1">
                  <label class="form-check-label">1</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" value="option2">
                  <label class="form-check-label">2</label>
                </div>
                <input class="form-control form-complience" placeholder="Masukan Catatan" name="10" value="" type="text">
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
        <h6 class="h2 text-black d-inline-block mb-0">Cek Fisik, Unit Outdoor</h6>
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
                <label class="form-control-label">Tst</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>
@endsection
@section('scripts')
<script src="{{asset('assets/vendor/select2/dist/js/select2.full.min.js')}}"></script>
<script>
  $(document).ready(function() {
    $('.select2').select2();
  });
  $('.select2').change(function(){
    var id = $(this).find(':selected').data('id');
    var merek = $(this).find(':selected').data('merek');
    $("#id_product").val(id);
    $("#merek").val(merek);
  });
</script>
@endsection
@extends('layouts.master')
@section('title-menu', 'Aktivasi Pendataan Uji Petik')
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
<form action="{{route('pengawasan.pemilihanlabuji.store')}}" method="post">
  @csrf
  <div class="row">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="form-control-label">Kegiatan</label>
                <input class="form-control form-complience" readonly value="Uji Petik">
              </div>
              <div class="form-group">
                <label class="form-control-label">Pilih Lab Uji Tujuan</label>
                <select name="17" class="form-control form-complience">
                  <option value="1">Qualis</option>
                  <option value="2">TUV Rheinland</option>
                  <option value="3">B2TkE-BRIN</option>
                  <option value="4">B4T-Kemenperin</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="text-center mb-3">
          <button class="btn btn-yellow button-comp" submit>
            Kirim
          </button>
        </div>
      </div>
    </div>
  </div>
  <div class="header-body">
    <div class="row align-items-center pb-1 ml-2">
      <div class="col-lg-12">
        <h6 class="h2 text-black d-inline-block mb-0">Detail Informasi</h6>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label class="form-control-label">Nomor SHE</label>
                <input class="form-control form-complience" readonly name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Merek</label>
                <input class="form-control form-complience" readonly name="11" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas</label>
                <input class="form-control form-complience" readonly name="12" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Teknologi</label>
                <input class="form-control form-complience" readonly name="13" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Manufaktur / Importir</label>
                <input class="form-control form-complience" readonly name="14" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kode atau Tanggal Produksi</label>
                <input class="form-control form-complience" readonly name="15" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Negara Asal</label>
                <input class="form-control form-complience" readonly name="16" value="" type="text">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="form-control-label">Nama Inspektur</label>
                <input class="form-control form-complience" readonly name="16" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Tipe Lokasi Pengawasan</label>
                <input class="form-control form-complience" readonly name="16" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nama Lokasi Pengawasan</label>
                <input class="form-control form-complience" readonly name="16" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Alamat Lokasi Pengawasan</label>
                <input class="form-control form-complience" readonly name="16" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Wilayah Lokasi Pengawasan</label>
                <input class="form-control form-complience" readonly name="16" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Foto Lokasi Pengawasan</label>
                <img class="img-umum" src="https://cdn.pixabay.com/photo/2013/07/13/11/31/shop-158317_960_720.png" alt="">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>

<div class="modal" tabindex="-1" role="dialog" id="modalSuccess">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content modal-comp">
      <div class="modal-body text-center p-5">
        <i class="ni ni-bell-55 mb-4"></i>
        <h2>Simpan Data Berhasil</h2>
        <h2>&</h2>
        <h2>Disimpan Kedalam Database</h2>
        <button class="btn btn-yellow button-comp mt-5">Kembali ke Dashboard</button>
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
  $('.select2').change(function(){
    var id = $(this).find(':selected').data('id');
    var merek = $(this).find(':selected').data('merek');
    $("#id_product").val(id);
    $("#merek").val(merek);
  });
</script>
@endsection
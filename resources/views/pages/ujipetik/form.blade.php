@extends('layouts.master')
@section('title-menu', 'Penerimaan dan Inspeksi Sampel - Pemeriksaan Fisik')
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
  <div class="row align-items-center pb-1 ml-2">
    <div class="col-lg-12">
      <h6 class="h2 text-black d-inline-block mb-0">Informasi Umum</h6>
    </div>
  </div>
</div>
<form action="{{route('ujipetik.store')}}" method="post" enctype="multipart/form-data">
  @csrf
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="form-control-label">Record ID</label>
                <input class="form-control form-complience" type="text" name="record_id" readonly value="{{$complience->record_id}}">
              </div>
              <div class="form-group">
                <label class="form-control-label">Laboratorium Pengujian</label>
                <input class="form-control form-complience" type="text" readonly value="{{$complience->lab->nama ?? "-"}}">
              </div>
              <div class="form-group">
                <label class="form-control-label">Tanggal & Waktu Inspeksi Sampel</label>
                <input class="form-control form-complience" type="text" readonly value="{{$complience->updated_at}}">
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
    <div class="row align-items-center pb-1 ml-2">
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
            <div class="col-md-6">
              <div class="form-group">
                <label class="form-control-label">Nomor SHE</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" readonly value="{{$complience->no_she}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Merek</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="11" readonly value="{{$complience->merek}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="12" readonly value="{{$complience->kapasitas}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Teknologi</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="13" readonly value="{{$complience->teknologi}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Informasi sampel sudah sesuai</label>
                <select name="sampel_sesuai" class="form-control form-complience">
                  <option value="1">Ya</option>
                  <option value="0">Tidak</option>
                </select>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="form-control-label">Manufaktur / Importir</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="14" readonly value="{{$complience->manufaktur}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kode atau Tanggal Produksi</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="15" readonly value="{{$complience->kode}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Negara Asal</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="16" readonly value="{{$complience->negara}}" type="text">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  @foreach ($forms as $form)
  <div class="header-body">
    <div class="row align-items-center pb-1 ml-2">
      <div class="col-lg-12">
        <h6 class="h2 text-black d-inline-block mb-0">{{$form->title}}</h6>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              @foreach ($form->childForm as $child)
              <div class="form-group">
                <label class="form-control-label">{!!nl2br($child->data_point)!!}</label><br>
                {!!$helpers->formInput($child->data_entry_type, $child->id, $child->data_input)!!}
              </div>
              @endforeach
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  @endforeach
  <div class="row">
    <div class="col-md-12">
      <div class="text-center mb-6">
        <button class="btn btn-yellow button-comp" submit>
          Kirim
        </button>
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
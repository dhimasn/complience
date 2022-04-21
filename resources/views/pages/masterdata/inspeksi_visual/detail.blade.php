@extends('layouts.master')
@section('title-menu', 'Detail Inspeksi Visual')
@section('styles')
<style>
  .form-complience {
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
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-md-12">
            <div class="form-group">
              <label class="form-control-label">Record ID</label>
              <input class="form-control form-complience" type="text" name="record_id" readonly
                value="{{$complience->record_id}}">
            </div>
            <div class="form-group">
              <label class="form-control-label">Tanggal & Waktu Inspeksi Sampel</label>
              <input class="form-control form-complience" type="text" readonly value="{{$complience->updated_at}}">
            </div>
            <div class="form-group">
              <label class="form-control-label">Nama Pengawas</label>
              <input class="form-control form-complience" type="text" value="{{$complience->formulir1->pengawas->name}}" readonly>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<form action="{{route('masterdata.inspeksi_visual.simpan', $complience->record_id)}}" method="post">
  @csrf
  <div class="header-body">
    <div class="row align-items-center pb-1 ml-2">
      <div class="col-lg-12">
        <h6 class="h2 text-black d-inline-block mb-0">Detail Produk EBTKE</h6>
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
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" readonly
                  value="{{$complience->no_she}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Merek</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="11" readonly
                  value="{{$complience->merek}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="12" readonly
                  value="{{$complience->kapasitas}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Teknologi</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="13" readonly
                  value="{{$complience->teknologi}}" type="text">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="form-control-label">Manufaktur / Importir</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="14" readonly
                  value="{{$complience->manufaktur}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kode atau Tanggal Produksi</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="15" readonly
                  value="{{$complience->kode_produk}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Negara Asal</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="16" readonly
                  value="{{$complience->negara}}" type="text">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  @foreach ($formsInspeksi as $form)
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
              @foreach ($form->childForm as $item)
                @foreach ($formData as $key => $formValue)
                  @if ($key == $item->id)
                  <div class="form-group">
                    <label class="form-control-label">{!!$item->data_point!!}</label>
                    {!!$helper->formRead($item->data_entry_type, $formValue, $item->input_keterangan)!!}
                  </div>
                  @endif
                @endforeach
              @endforeach
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  @endforeach
  <button class="btn btn-yellow button-comp btn-submit" type="button" data-type="edit" style="position: fixed;bottom: 2%; right: 11%;">
    Edit
  </button>
</form>
@endsection
@section('scripts')
<script src="{{asset('assets/vendor/select2/dist/js/select2.full.min.js')}}"></script>
<script>
  $(document).ready(function() {
    $('.select2').select2();
  });
  $('.btn-submit').click(function(e){
    var type = $(this).data('type');
    if(type=='edit'){
      $(this).data('type', 'simpan');
      $(this).text('Simpan');
      $('input').attr('readonly', false);
      $(this).removeAttr('type');
      $(this).attr('submit', true);
      e.preventDefault();
    }
  });
  $('.select2').change(function(){
    var id = $(this).find(':selected').data('id');
    var merek = $(this).find(':selected').data('merek');
    $("#id_product").val(id);
    $("#merek").val(merek);
  });
</script>
@endsection
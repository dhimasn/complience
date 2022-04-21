@extends('layouts.master')
@section('title-menu', 'Detail Uji Petik')
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
              <label class="form-control-label">Laboratorium Pengujian</label>
              <input class="form-control form-complience" type="text" readonly
                value="{{$complience->lab->nama ?? '-'}}">
            </div>
            <div class="form-group">
              <label class="form-control-label">Tanggal & Waktu Inspeksi Sampel</label>
              <input class="form-control form-complience" type="text" readonly value="{{$complience->updated_at}}">
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
            <div class="form-group">
              <label class="form-control-label">Sampel Sudah sesuai</label>
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
<div id="nav-pills-tabs-component" class="tab-pane tab-example-result fade active show" role="tabpanel"
  aria-labelledby="nav-pills-tabs-component-tab">
  <div class="nav-wrapper">
    <ul class="nav nav-pills nav-fill flex-column d-flex flex-md-row" id="tabs-icons-text" role="tablist">
      <li class="nav-item">
        <a class="nav-link mb-sm-3 mb-md-0 active" id="tabs-icons-text-1-tab" data-toggle="tab"
          href="#tabs-icons-text-1" role="tab" aria-controls="tabs-icons-text-1" aria-selected="true">Data Inspeksi</a>
      </li>
      <li class="nav-item">
        <a class="nav-link mb-sm-3 mb-md-0" id="tabs-icons-text-2-tab" data-toggle="tab" href="#tabs-icons-text-2"
          role="tab" aria-controls="tabs-icons-text-2" aria-selected="false">Pemeriksaan Sampel Uji</a>
      </li>
      <li class="nav-item">
        <a class="nav-link mb-sm-3 mb-md-0" id="tabs-icons-text-3-tab" data-toggle="tab" href="#tabs-icons-text-3"
          role="tab" aria-controls="tabs-icons-text-3" aria-selected="false">Hasil Pengujian</a>
      </li>
    </ul>
  </div>
  <div class="tab-content" id="myTabContent">
    <div class="tab-pane fade active show" id="tabs-icons-text-1">
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
                      @foreach ($inspeksi as $key => $formValue)
                        @if ($key == $item->id)
                        <div class="form-group">
                          <label class="form-control-label">{!!$item->data_point!!}</label>
                          {!!$helper->formRead($item->data_entry_type, $formValue)!!}
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
    </div>
    <div class="tab-pane fade" id="tabs-icons-text-2" role="tabpanel" aria-labelledby="tabs-icons-text-2-tab">
      @if (!$formsSampeUji)
      <div class="row pb-5 mx-auto">
        <div class="col-lg-12 text-center">
          <h6 class="h2 text-black d-inline-block mb-0">Pemeriksaan Sampel Uji Belum Tersedia</h6>
        </div>
      </div>
      @else
        <div class="header-body">
          <div class="row align-items-center pb-1 ml-2">
            <div class="col-lg-12">
              <h6 class="h2 text-black d-inline-block mb-0">Informasi Lab</h6>
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
                      <label class="form-control-label">Tanggal & Waktu Input</label>
                      <input class="form-control form-complience" type="text" readonly value="{{$complience->formulir2->updated_at}}">
                    </div>
                    <div class="form-group">
                      <label class="form-control-label">Nama Pemeriksa</label>
                      <input class="form-control form-complience" type="text" readonly
                        value="{{$complience->formulir2->nama_pemeriksan}}">
                    </div>
                    <div class="form-group">
                      <label class="form-control-label">Nama Persetujuan</label>
                      <input class="form-control form-complience" type="text" readonly
                        value="{{$complience->formulir2->nama_persetujuan}}">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        @forelse ($formsSampeUji as $form)
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
                      @foreach ($sampeUji as $key => $formValue)
                        @if ($key == $item->id)
                        <div class="form-group">
                          <label class="form-control-label">{!!$item->data_point!!}</label>
                          {!!$helper->formRead($item->data_entry_type, $formValue)!!}
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
        @empty
        <div class="row pb-5 mx-auto">
          <div class="col-lg-12 text-center">
            <h6 class="h2 text-black d-inline-block mb-0">Pemeriksaan Sampel Uji Belum Tersedia</h6>
          </div>
        </div>
        @endforelse
      @endif
    </div>
    <div class="tab-pane fade" id="tabs-icons-text-3" role="tabpanel" aria-labelledby="tabs-icons-text-3-tab">
      @if ($valueForm3)
        @foreach ($complience->formulir3s as $form3)
          @include('pages.masterdata.partials.formulir3')
        @endforeach
      @else
      <div class="row pb-5 mx-auto">
        <div class="col-lg-12 text-center">
          <h6 class="h2 text-black d-inline-block mb-0">Hasil Pengujian Belum Tersedia</h6>
        </div>
      </div>
      @endif
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
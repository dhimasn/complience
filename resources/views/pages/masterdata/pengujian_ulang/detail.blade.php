@extends('layouts.master')
@section('title-menu', 'Detail Pengujian Ulang')
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
              <input class="form-control form-complience" type="text" readonly value="{{$complience->created_at}}">
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
  <div class="nav-wrapper pb-0">
    <ul class="nav nav-pills nav-fill flex-column d-flex flex-md-row" id="tabs-icons-text" role="tablist">
      <li class="nav-item">
        <a class="nav-link mb-sm-3 mb-md-0 active" id="tabs-icons-text-1-tab" data-toggle="tab"
          href="#tabs-icons-text-1" role="tab" aria-controls="tabs-icons-text-1" aria-selected="true">Aktivasi
          Pendataan</a>
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
    <hr class="my-3 p-0">
  </div>
  <div class="tab-content" id="myTabContent">
    <div class="tab-pane fade active show" id="tabs-icons-text-1">
      @foreach ($dataForm4 as $form)
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
                      @foreach ($valueForm4 as $key => $formValue)
                        @if ($key == $child->id)
                        <div class="form-group">
                          <label class="form-control-label">{!!$child->data_point!!}</label>
                          {!!$helpers->formRead($child->data_entry_type, $formValue, $child->input_keterangan)!!}
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
      <div id="tab-sampelUjis" class="tab-pane tab-example-result fade active show" role="tabpanel"
        aria-labelledby="tab-sampelUjis-tab">
        <div class="nav-wrapper pb-0">
          <ul class="nav nav-pills nav-fill flex-column d-flex flex-md-row" id="tab-sampelUji" role="tablist">
            @forelse ($complience->formulir2s as $form2)
            <li class="nav-item mb-3">
              <a class="nav-link mb-sm-3 mb-md-0 {{$loop->iteration == 1 ? " active" : '' }}"
                id="tab-sampelUji-{{$loop->iteration}}-tab" data-toggle="tab" href="#tab-sampelUji-{{$loop->iteration}}" role="tab"
                aria-controls="tab-sampelUji-{{$loop->iteration}}" aria-selected="true">{{$form2->lab->nama}}</a>
            </li>
            @empty
            <div class="row pb-5 mx-auto">
              <div class="col-lg-12 text-center">
                <h6 class="h2 text-black d-inline-block mb-0">Pemeriksaan Sampel Uji Belum Tersedia</h6>
              </div>
            </div>
            @endforelse
          </ul>
        </div>
        <div class="tab-content" id="pemeriksaanSampel">
          @foreach ($complience->formulir2s as $form2)
          <div class="tab-pane fade {{$loop->iteration == 1 ? " active show" : '' }}" id="tab-sampelUji-{{$loop->iteration}}" role="tabpanel" aria-labelledby="tab-sampelUji-{{$loop->iteration}}">
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
                          <input class="form-control form-complience" type="text" readonly value="{{$form2->updated_at}}">
                        </div>
                        <div class="form-group">
                          <label class="form-control-label">Nama Pemeriksa</label>
                          <input class="form-control form-complience" type="text" readonly
                            value="{{$form2->nama_pemeriksan}}">
                        </div>
                        <div class="form-group">
                          <label class="form-control-label">Nama Persetujuan</label>
                          <input class="form-control form-complience" type="text" readonly
                            value="{{$form2->nama_persetujuan}}">
                        </div>
                        <div class="form-group">
                          <label class="form-control-label">Sampel Sudah sesuai</label>
                          <input class="form-control form-complience" placeholder="Masukan Jawaban" name="13" readonly
                            value="{{$form2->sampel_sesuai == '0' ? 'Tidak Sesuai' : 'Sesuai'}}" type="text">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            @foreach ($form2->formList() as $form)
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
                          @foreach ($form2->formJson() as $key => $formValue)
                            @if ($key == $child->id)
                            <div class="form-group">
                              <label class="form-control-label">{!!$child->data_point!!}</label>
                              {!!$helpers->formRead($child->data_entry_type, $formValue, $child->input_keterangan)!!}
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
          @endforeach
        </div>
      </div>
    </div>
    <div class="tab-pane fade" id="tabs-icons-text-3" role="tabpanel" aria-labelledby="tabs-icons-text-3-tab">
      <div id="tab-hasilPengujians" class="tab-pane tab-example-result fade active show" role="tabpanel"
        aria-labelledby="tab-hasilPengujians-tab">
        <div class="nav-wrapper pb-0">
          <ul class="nav nav-pills nav-fill flex-column d-flex flex-md-row" id="tab-hasilPengujian" role="tablist">
            @forelse($complience->formulir3s as $form3)
            <li class="nav-item mb-3">
              <a class="nav-link mb-sm-3 mb-md-0 {{$loop->iteration == 1 ? " active" : '' }}"
                id="tab-hasilPengujian-{{$loop->iteration}}-tab" data-toggle="tab" href="#tab-hasilPengujian-{{$loop->iteration}}" role="tab"
                aria-controls="tab-hasilPengujian-{{$loop->iteration}}" aria-selected="true">{{$form3->lab->nama}}</a>
            </li>
            @empty
              <div class="row pb-5 mx-auto">
                <div class="col-lg-12 text-center">
                  <h6 class="h2 text-black d-inline-block mb-0">Hasil Pengujian Belum Tersedia</h6>
                </div>
              </div>
            @endforelse 
          </ul>
        </div>
        <div class="tab-content" id="hasilPengujian">
          @foreach ($complience->formulir3s as $form3)
          @php
              $valueForm3 = $form3->formJson();
          @endphp
          <div class="tab-pane fade {{$loop->iteration == 1 ? " active show" : '' }}" id="tab-hasilPengujian-{{$loop->iteration}}" role="tabpanel" aria-labelledby="tab-hasilPengujian-{{$loop->iteration}}">
            @include('pages.masterdata.partials.formulir3')
          </div>
          @endforeach
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
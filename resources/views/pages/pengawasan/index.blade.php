@extends('layouts.master')
@section('title-menu', 'Pengawasan')
@section('contents')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body card-body-dashboard">
        <div class="row">
          <div class="col-md-4">
            <div class="card box-formulir-dashboard">
              <div class="card-body grid-disp">
                <i class="far fa-file-alt icon-box-formulir-dashboard"></i>
                <span class="title-box-formulir">
                  Pemilihan Lab Uji
                </span>
                <div class="line-box-formulir"></div>
                <span class="desc-box-formulir">
                  Pemilihan Lab Uji, untuk memulai pendataan dan aktivasi kegiatan uji petik di lab uji
                  (Formulir 2, lalu Formulir 3)
                </span>
                <a class="btn btn-yellow button-pilih-formulir-dash" href="{{route('pengawasan.pemilihanlabuji')}}">
                  Pilih
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card box-formulir-dashboard">
              <div class="card-body grid-disp">
                <i class="far fa-file-alt icon-box-formulir-dashboard"></i>
                <span class="title-box-formulir">
                  Pengisian Formulir 4
                </span>
                <div class="line-box-formulir"></div>
                <span class="desc-box-formulir">
                  Menginisiasi entri data, untuk memulai rekaman pendataan dan aktivasi kegiatan di lab uji
                  (Formulir 2, lalu Formulir 3)
                </span>
                <a class="btn btn-yellow button-pilih-formulir-dash" href="{{route('form4.pilihproduk')}}">
                  Pilih
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
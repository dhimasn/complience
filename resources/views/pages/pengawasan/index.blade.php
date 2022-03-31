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
                  Aktivasi Pendataan Uji Petik
                </span>
                <div class="line-box-formulir"></div>
                <span class="desc-box-formulir">
                  Aktivasi Pendataan Uji Petik, untuk memulai pendataan dan aktivasi kegiatan uji petik di lab uji
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
                  Pendataan RRT dan Pengujian Lainnya
                </span>
                <div class="line-box-formulir"></div>
                <span class="desc-box-formulir">
                  Aktivasi Pendataan Round Robin Testing dan Pengujian Lainnya
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
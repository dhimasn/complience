@extends('layouts.master')
@section('title-menu', 'Pengujian Lab')
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
                  Pengisian Formulir 2
                </span>
                <div class="line-box-formulir"></div>
                <span class="desc-box-formulir">
                  Merekam data inspeksi, dan menginformasikan Tim Pengawasan bahwa sampel telah diterima dan dapat
                  diproses untuk pengujian
                </span>
                <a class="btn btn-yellow button-pilih-formulir-dash" href="{{route('form2.index')}}">
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
                  Pengisian Formulir 3
                </span>
                <div class="line-box-formulir"></div>
                <span class="desc-box-formulir">
                  Merekam data digital hasil pengujian untuk rekaman Database
                </span>
                <a class="btn btn-yellow button-pilih-formulir-dash" href="{{route('form3.index')}}">
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
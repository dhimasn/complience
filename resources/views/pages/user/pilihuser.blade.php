@extends('layouts.master')
@section('title-menu', 'Tambah User')
@section('contents')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body card-body-dashboard">
        <div class="row">
          <div class="col-md-12">
            <div class="card box-formulir-list">
              <div class="card-body grid-disp">
                <div class="row p-3 align-items-center">
                  <div class="col-md-6 text-left">
                    <span class="title-box-list">Tim Pengawasan</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <a class="btn btn-yellow button-pilih-formulir-dash" href="{{route('user.pengawasan')}}">
                      Pilih
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="card box-formulir-list">
              <div class="card-body grid-disp">
                <div class="row p-3 align-items-center">
                  <div class="col-md-6 text-left">
                    <span class="title-box-list">Staf Laboratorium</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <a class="btn btn-yellow button-pilih-formulir-dash" href="{{route('user.lab')}}">
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
  </div>
</div>
@endsection
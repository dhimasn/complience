@extends('layouts.master')
@section('title-menu', 'Pengisian Formulir 3')
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
                    <span class="title-box-list">Uji Petik</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <a class="btn btn-yellow button-pilih-formulir-dash" href="{{route('form3.ujipetik')}}">
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
                    <span class="title-box-list">Round Robin Testing</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <a class="btn btn-yellow button-pilih-formulir-dash" href="{{route('form3.roundrobin')}}">
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
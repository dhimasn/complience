@extends('layouts.master')
@section('title-menu', 'Detail Produk Highrisk')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/vendor/select2/dist/css/select2.min.css')}}" type="text/css">
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
<form action="" method="" enctype="multipart/form-data"> 
  @csrf
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                  <label class="form-control-label">{{$result['kriteria1']}}</label>
                  <input class="form-control form-complience" readonly value="{{$result['nilai1']}}" type="text">
                  <label class="form-control-label">bobot: {{$result['bobot1']}}</label>
                </div>
                <div class="form-group">
                  <label class="form-control-label">{{$result['kriteria2']}}</label>
                  <input class="form-control form-complience" readonly value="{{$result['nilai2']}}" type="text">
                  <label class="form-control-label">bobot: {{$result['bobot2']}}</label>
                </div>
                <div class="form-group">
                  <label class="form-control-label">{{$result['kriteria3']}}</label>
                  <input class="form-control form-complience" readonly value="{{$result['nilai3']}}" type="text">
                  <label class="form-control-label">bobot: {{$result['bobot3']}}</label>
                </div>
                <div class="form-group">
                  <label class="form-control-label">{{$result['kriteria4']}}</label>
                  <input class="form-control form-complience" readonly value="{{$result['nilai4']}}" type="text">
                  <label class="form-control-label">bobot: {{$result['bobot4']}}</label>
                </div>
                <div class="form-group">
                  <label class="form-control-label">{{$result['kriteria5']}}</label>
                  <input class="form-control form-complience" readonly value="{{$result['nilai5']}}" type="text">
                  <label class="form-control-label">bobot: {{$result['bobot5']}}</label>
                </div>
                <div class="form-group">
                  <label class="form-control-label">{{$result['kriteria6']}}</label>
                  <input class="form-control form-complience" readonly value="{{$result['nilai6']}}" type="text">
                  <label class="form-control-label">bobot: {{$result['bobot6']}}</label>
                </div>
                <div class="form-group">
                  <label class="form-control-label">Risk Rating (Bobot Total)</label>
                  <input class="form-control form-complience" readonly value="{{$result['risk_rating']}}" type="text">
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>
@endsection

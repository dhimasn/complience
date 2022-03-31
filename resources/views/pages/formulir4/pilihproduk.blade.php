@extends('layouts.master')
@section('title-menu', 'Aktivasi Pendataan RRT dan Pengujian Lainnya')
@section('styles')
<style>
  input[type='radio'] {
    width: 15px;
    height: 15px;
  }
</style>
@endsection
@section('contents')
<div class="header-body">
  <div class="row align-items-center pb-1 ml-2">
    <div class="col-lg-12">
      <h6 class="h2 text-black d-inline-block mb-0">Ketegori Produk</h6>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-5">
    <div class="col-lg-12">
      <a class="card box-pilih-produk" href="{{route('form4.form')}}">
        <div class="card-body d-flex align-items-center">
          <div class="icon-produk">
            <img src="{{asset('assets/image/icon/ac.png')}}" style="width: 30px" alt="">
          </div>
          <span class="ml-4">Pengondisi Udara</span>
        </div>
      </a>
    </div>
    <div class="col-lg-12">
      <a class="card box-pilih-produk disable">
        <div class="card-body d-flex align-items-center">
          <div class="icon-produk">
            <img src="{{asset('assets/image/icon/lampu.png')}}" alt="">
          </div>
          <span class="ml-4">Lampu Swabalast CFL</span>
        </div>
      </a>
    </div>
    <div class="col-lg-12">
      <a class="card box-pilih-produk disable">
        <div class="card-body d-flex align-items-center">
          <div class="icon-produk">
            <img src="{{asset('assets/image/icon/ricecooker.png')}}" alt="">
          </div>
          <span class="ml-4">Penanak Nasi</span>
        </div>
      </a>
    </div>
    <div class="col-lg-12">
      <a class="card box-pilih-produk disable">
        <div class="card-body d-flex align-items-center">
          <div class="icon-produk">
            <img src="{{asset('assets/image/icon/kulkas.png')}}" style="width: 20px" alt="">
          </div>
          <span class="ml-4">Kulkas</span>
        </div>
      </a>
    </div>
    <div class="col-lg-12">
      <a class="card box-pilih-produk disable">
        <div class="card-body d-flex align-items-center">
          <div class="icon-produk">
            <img src="{{asset('assets/image/icon/kipasangin.png')}}" alt="">
          </div>
          <span class="ml-4">Kipas Angin</span>
        </div>
      </a>
    </div>
    {{-- <div class="col-md-12">
      <div class="form-group">
        <label class="form-control-label">Pilih Produk</label><br>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="produk" checked value="ac">
          <label class="form-check-label ml-2">Pengondisi Udara</label>
        </div>
        <div class="form-check mt-2">
          <input class="form-check-input" type="radio" name="produk" value="lampu">
          <label class="form-check-label ml-2">Lampu Swabalast CFL</label>
        </div>
        <div class="form-check mt-2">
          <input class="form-check-input" type="radio" name="produk" value="kulkas">
          <label class="form-check-label ml-2">Kulkas</label>
        </div>
        <div class="form-check mt-2">
          <input class="form-check-input" type="radio" name="produk" value="penanak-nasi">
          <label class="form-check-label ml-2">Penanak Nasi</label>
        </div>
        <div class="form-check mt-2">
          <input class="form-check-input" type="radio" name="produk" value="kipas-angin">
          <label class="form-check-label ml-2">Kipas Angin</label>
        </div>
      </div>
      <div class="text-center">
        <button class="btn btn-yellow button-comp mt-4 mb-3" submit>
          Pilih & Lanjut
        </button>
      </div>
    </div> --}}
  </div>
</div>
@endsection
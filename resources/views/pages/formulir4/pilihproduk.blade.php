@extends('layouts.master')
@section('title-menu', 'Pengisian Formulir 4')
@section('styles')
  <style>
   input[type='radio']{
     width: 15px;
     height: 15px;
   }
  </style>
@endsection
@section('contents')
{{-- <div class="header-body">
  <div class="row align-items-center pb-1 ml-2">
    <div class="col-lg-12">
      <h6 class="h2 text-black d-inline-block mb-0">Produk</h6>
    </div>
  </div>
</div> --}}
<form action="{{route('form4.form')}}" method="GET">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="form-control-label">Pilih Produk</label><br>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="produk" checked value="ac">
                  <label class="form-check-label ml-2">AC</label>
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
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>
@endsection
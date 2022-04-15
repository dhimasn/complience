@extends('layouts.master')
@section('title-menu', 'Update User')
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

<form action="{{route('user.store')}}" method="post" enctype="multipart/form-data"> 

  @csrf
  <div class="header-body">
    <div class="row align-items-center pb-1 ml-2">
      <div class="col-lg-12">
        <h6 class="h2 text-black d-inline-block mb-0">Detail User Pengawasan</h6>
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
                <label class="form-control-label">Username</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="username" 
                  value="{{$user->username}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">name</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="name" 
                  value="{{$user->name}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">email</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="email" 
                  value="{{$user->email}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Password</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name=password" 
                  value="" type="text">
              </div>
              @php
                if(isset($user->id_lab)){
              @endphp
              <div class="form-group">
                <label class="form-control-label">Laboratorium</label>
                <select name="id_lab"  class="form-control form-complience">
                  <option value="" disabled selected="true">Pilih Laboratorium</option>
                  @foreach ($listLab as $id_Lab => $lab)
                  <option value="{{$lab['id']}}">{{$lab['nama']}}</option>
                  @endforeach
                </select>
              </div>
              @php
                }
              @endphp
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="text-center mb-6">
        <button class="btn btn-yellow button-comp" submit>
          Kirim
        </button>
      </div>
    </div>
  </div>

</form>

<div class="modal" tabindex="-1" role="dialog" id="modalSuccess">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content modal-comp">
      <div class="modal-body text-center p-5">
        <i class="ni ni-bell-55 mb-4"></i>
        <h2>Simpan Data Berhasil</h2>
        <h2>&</h2>
        <h2>Disimpan Kedalam Database</h2>
        <button class="btn btn-yellow button-comp mt-5">Kembali ke Dashboard</button>
      </div>
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
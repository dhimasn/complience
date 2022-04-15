@extends('layouts.master')
@section('title-menu', 'Detail User')
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

  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label class="form-control-label">Username</label>
                <input class="form-control form-complience" readonly value="{{$user->username}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">name</label>
                <input class="form-control form-complience" readonly value="{{$user->name}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">email</label>
                <input class="form-control form-complience" readonly value="{{$user->email}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">updated at</label>
                <input class="form-control form-complience" readonly value="{{$user->updated_at}}" type="text">
              </div>
              @php
                if(isset($user->id_lab)){
              @endphp
              <div class="form-group">
                <label class="form-control-label">Laboratorium</label>
                <input class="form-control form-complience" readonly value="{{$user->id_lab}}" type="text">
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
</form>
@endsection

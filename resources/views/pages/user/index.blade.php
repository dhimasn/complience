@extends('layouts.master')
@section('title-menu', 'Kelola User')
@section('contents')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body p-2">
      <a class="btn btn-yellow button-pilih-formulir-dash" href="{{route('user.form')}}">Tambah</a>
        <br>      
        <div class="row">
          <div class="col-md-12">
            <table class="table table-comp table-responsive">
              <thead class="thead-comp">
                <th>User Name</th>
                <th>email </th>
                <th>Role</th>
                <th>Laboratorium</th>
                <th>aksi</th>
                <th>Tanggal Update</th>
              </thead>
              <tbody>
                @foreach ($users as $user)
                <tr>
                  <td>{{$user->username}}</td>
                  <td>{{$user->email}}</td>
                  <td>{{$user->category_user}}</td>
                  <td>{{$user->nama}}</td>
                  <td>
                     <a class="btn btn-yellow button-pilih-formulir-dash" href="">detail</a>
                     <a class="btn btn-yellow button-pilih-formulir-dash" href="">update</a>
                     <a class="btn btn-yellow button-pilih-formulir-dash" href="">delete</a>
                  </td>
                  <td>{{$user->updated_at}}</td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
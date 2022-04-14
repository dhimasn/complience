@extends('layouts.master')
@section('title-menu', 'Kelola User')
@section('contents')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body p-2">
      <div class="text-left mb-2">
        <a class="btn btn-sm btn-primary" href="{{route('user.pilih')}}">Tambah</a> 
      </div>  
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
                     <a class="btn btn-sm btn-info" href="{{route('user.detail', $user->username)}}">detail</a>
                     <a class="btn btn-sm btn-warning" href="{{route('user.update', $user->username)}}">update</a>
                     <a class="btn btn-sm btn-danger" href="{{route('user.delete', $user->username)}}">delete</a>
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
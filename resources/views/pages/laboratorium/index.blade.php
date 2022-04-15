@extends('layouts.master')
@section('title-menu', 'Kelola Daftar Laboratorium')
@section('contents')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body p-2">
      <div class="text-left mb-2">
        <a class="btn btn-sm btn-primary" href="{{route('laboratorium.add')}}">Tambah</a> 
      </div>  
        <div class="row">
          <div class="col-md-12">
            <table class="table table-comp table-responsive">
              <thead class="thead-comp">
                <th>No</th>
                <th>Nama</th>
                <th>aksi</th>
                <th>Tanggal Update</th>
              </thead>
              <tbody>
                @php
                  $i = 1;
                @endphp
                  @foreach ($labs as $lab)
                  <tr>
                    <td>{{$i}}</td>
                    <td>{{$lab->nama}}</td>
                    <td>
                      <a class="btn btn-sm btn-info" href="{{route('user.detail', $lab->nama)}}">detail</a>
                      <a class="btn btn-sm btn-warning" href="{{route('user.update', $lab->nama)}}">update</a>
                      <a class="btn btn-sm btn-danger" href="{{route('user.delete', $lab->nama)}}">delete</a>
                    </td>
                    <td>{{$lab->updated_at}}</td>
                  </tr>
                  @php
                    $i++;
                  @endphp
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
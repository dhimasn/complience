@extends('layouts.master')
@section('title-menu', 'Aktivasi Pendataan Uji Petik')
@section('contents')
{{-- <div class="header-body">
  <div class="row align-items-center pb-1">
    <div class="col-lg-12">
      <h6 class="h2 text-black d-inline-block mb-0">Uji Petik</h6>
    </div>
  </div>
</div> --}}
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body p-2">
        <div class="row">
          <div class="col-md-12">
            <table class="table table-comp table-responsive">
              <thead class="thead-comp">
                <th>Record ID</th>
                <th>Nomor SHE</th>
                <th>Merek</th>
                <th>Kapasitas</th>
                <th>Model</th>
                <th>Lokasi Pengawasan</th>
                <th>Pengawas</th>
                <th>Tanggal Inspeksi</th>
              </thead>
              <tbody>
                @foreach ($compliences as $item)
                <tr>
                  <td><a href="{{route('pengawasan.pemilihanlabuji.detail', $item->record_id)}}">{{$item->record_id}}</a></td>
                  <td>{{$item->no_she}}</td>
                  <td>{{$item->merek}}</td>
                  <td>{{$item->kapasitas}}</td>
                  <td>{{$item->model}}</td>
                  <td>{{$item->formulir1->lokasi_pengawasan}}</td>
                  <td>{{$item->formulir1->pengawas->name}}</td>
                  <td>{{$item->created_at}}</td>
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
@extends('layouts.master')
@section('title-menu', 'Master Data')
@section('contents')
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
                <th>Model Produk</th>
                <th>Merek</th>
                <th>Tanggal Update</th>
                <th>Nama Toko</th>
                <th>Lab Uji</th>
                <th>Kegiatan</th>
                <th>Status</th>
              </thead>
              <tbody>
                @foreach ($compliences as $item)
                <tr>
                  <td><a href="{{route('masterdata.detailcomplience')}}">{{$item->record_id}}</a></td>
                  <td>{{$item->no_she}}</td>
                  <td>{{$item->model}}</td>
                  <td>{{$item->merek}}</td>
                  <td>{{$item->updated_at}}</td>
                  <td>-</td>
                  <td>{{$item->lab->nama ?? "-"}}</td>
                  <td>{{$item->kegiatan == '1' ? 'Uji Petik' : 'Round Robin'}}</td>
                  <td>{{$status[$item->status] ?? ''}}</td>
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
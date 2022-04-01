@extends('layouts.master')
@section('title-menu', 'Rekaman Hasil Pengujian')
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
      <div class="card-body p-3">
        <div class="row">
          <div class="col-md-12">
            <table class="table table-comp table-responsive">
              <thead class="thead-comp">
                <th>Record ID</th>
                <th>Nomor SHE</th>
                <th>Merek</th>
                <th>Kapasitas</th>
                <th>Model</th>
                <th>Tanggal Penerimaan</th>
                <th>Kegiatan</th>
              </thead>
              <tbody>
                @foreach ($compliences as $item)
                <tr>
                  <td><a href="{{route('form3.form', $item->record_id)}}">{{$item->record_id}}</a></td>
                  <td>{{$item->no_she}}</td>
                  <td>{{$item->merek}}</td>
                  <td>{{$item->kapasitas}}</td>
                  <td>{{$item->model}}</td>
                  <td>{{$item->updated_at}}</td>
                  <td>{{$item->kegiatan == '1' ? 'Uji Petik' : 'Round Robin'}}</td>
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
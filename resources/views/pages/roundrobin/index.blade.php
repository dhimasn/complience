@extends('layouts.master')
@section('title-menu', 'Penerimaan dan Inspeksi Sampel - Pemeriksaan Pra-Pengujian')
@section('contents')
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
                <th>Lab</th>
                <th>Tanggal Pendataan</th>
              </thead>
              <tbody>
                @foreach ($complience as $item)
                <tr>
                  <td><a href="{{route('roundrobin.form', $item->formulir4->id)}}">{{$item->record_id}}{{$loop->iteration}}</a></td>
                  <td>{{$item->no_she}}</td>
                  <td>{{$item->merek}}</td>
                  <td>{{$item->kapasitas}}</td>
                  <td>{{$item->model}}</td>
                  {{-- <td>{{$item->lab->nama}}</td> --}}
                  <td>{{$item->updated_at}}</td>
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
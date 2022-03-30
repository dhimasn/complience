@extends('layouts.master')
@section('title-menu', 'Pemilihan Lab Uji')
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
            <table class="table table-comp">
              <thead class="thead-comp">
                <th>#</th>
                <th>Record ID</th>
                <th>Nomor SHE</th>
                <th>Merek</th>
                <th>Kapasitas</th>
                <th>Teknologi</th>
                <th>Tanggal</th>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td><a href="{{route('pengawasan.pemilihanlabuji.detail')}}">123412</a></td>
                  <td>hjshfjksdhfjkhjk</td>
                  <td>Samsung</td>
                  <td>2 PK</td>
                  <td>Inverter</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td><a href="{{route('pengawasan.pemilihanlabuji.detail')}}">123412</a></td>
                  <td>hjshfjksdhfjkhjk</td>
                  <td>Samsung</td>
                  <td>2 PK</td>
                  <td>Inverter</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
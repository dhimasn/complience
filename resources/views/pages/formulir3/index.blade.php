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
            <table class="table table-comp">
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
                <tr>
                  <td><a href="{{route('form3.form')}}">123412</a></td>
                  <td>200.323.482.43</td>
                  <td>Samsung</td>
                  <td>2 PK</td>
                  <td>HUDMK/2332</td>
                  <td>20/03/2022 07:32</td>
                  <td>Uji Petik</td>
                </tr>
                <tr>
                  <td><a href="{{route('form3.form')}}">HDU827</a></td>
                  <td>200.323.482.43</td>
                  <td>Samsung</td>
                  <td>2 PK</td>
                  <td>HUDMK/2332</td>
                  <td>20/03/2022 07:32</td>
                  <td>Round Robin</td>
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
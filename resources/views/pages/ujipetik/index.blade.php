@extends('layouts.master')
@section('title-menu', 'Penerimaan dan Inspeksi Sampel')
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
              </thead>
              <tbody>
                <tr>
                  <td><a href="{{route('ujipetik.form', '12345')}}">KHU75GH</a></td>
                  <td>343.097.93874</td>
                  <td>Samsung</td>
                  <td>2 PK</td>
                  <td>JUDKH76/KI</td>
                  <td>20/03/2022 09:09</td>
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
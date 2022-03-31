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
                <th>#</th>
                <th>Record ID</th>
                <th>Nomor SHE</th>
                <th>Model Produk</th>
                <th>Merek</th>
                <th>Tanggal</th>
                <th>Nama Toko</th>
                <th>Lab Uji</th>
                <th>Kegiatan</th>
                <th>Status</th>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td><a href="{{route('masterdata.detailcomplience')}}">KKO983H1</a></td>
                  <td>006.1.01.09.14.0002</td>
                  <td>AQA-KRV9BGS</td>
                  <td>Samsung</td>
                  <td>20/03/20022 12:32</td>
                  <td>Toko Makmur</td>
                  <td>BPPT</td>
                  <td>Uji Petik</td>
                  <td>Formulir 1</td>
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
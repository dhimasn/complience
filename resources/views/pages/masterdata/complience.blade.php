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
                <th>Manufactur</th>
                <th>Tanggal</th>
                <th>Nama Toko</th>
                <th>LSPro</th>
                <th>Lab Uji</th>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td><a href="{{route('ujipetik.form')}}">KKO983H1</a></td>
                  <td>006.1.01.09.14.0002</td>
                  <td>AQA-KRV9BGS</td>
                  <td>Samsung</td>
                  <td>PT. Samsung</td>
                  <td>20/03/20022 12:32</td>
                  <td>Toko Makmur</td>
                  <td>Baristand</td>
                  <td>BPPT</td>
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
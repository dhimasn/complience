@extends('layouts.master')
@section('title-menu', 'Data Produk Pengondisi Udara')
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
                <th>No SHE</th>
                <th>Merek</th>
                <th>Famili</th>
                <th>Model</th>
                <th>Tipe</th>
                <th>Daya (watt)</th>
                <th>Kapasitas Pendingin</th>
                <th>Nilai Efisien</th>
                <th>Rating Bintang</th>
                <th>Konsumsi Energi Tahunan (kWh)*</th>
                <th>Biaya Listrik Tahunan (Rp)</th>
              </thead>
              <tbody>
                @foreach ($products as $item)
                    <tr>
                      <td>{{$loop->iteration}}</td>
                      <td>{{$item['No. Registrasi/No. SHE']}}</td>
                      <td>{{$item['Merek']}}</td>
                      <td>{{$item['Famili']}}</td>
                      <td>{{$item['Model']}}</td>
                      <td>{{$item['Tipe']}}</td>
                      <td>{{$item['Daya (watt)']}}</td>
                      <td>{{$item['Kapasitas Pendinginan (BTU/h)']}}</td>
                      <td>{{$item['Nilai Efisiensi (EER/CSPF)']}}</td>
                      <td>{{$item['Rating Bintang (1-5)']}}</td>
                      <td>{{$item['Konsumsi Energi Tahunan (kWh)*']}}</td>
                      <td>{{$item['Biaya Listrik Tahunan (Rp)']}}</td>
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
@section('scripts')
<script>
  $(document).ready( function () {
    $('table').DataTable();
} );
</script>
@endsection
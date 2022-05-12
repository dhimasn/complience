@extends('layouts.master')
@section('title-menu', 'High Risk Produk')
@section('contents')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body p-2">
      <!-- <div class="text-left mb-2">
        <a class="btn btn-sm btn-primary" href="{{route('highrisk.sync')}}">sync</a> 
      </div> -->
        <div class="row">
          <div class="col-md-12">
            <table class="table table-comp table-responsive">
              <thead class="thead-comp">
                <th>Nomor SHE</th>
                <th>Model Produk</th>
                <th>Merek</th>
                <th>teknologi</th>
                <th>manufaktur</th>
                <th>Tanggal Inspeksi</th>
                <th>Verification Result</th>
                <th>detail</th>
              </thead>
              <tbody>
                @foreach ($highrisk as $item)
                <tr>
                  <td><a href="">{{$item->no_she}}</a></td>
                  <td>{{$item->model}}</td>
                  <td>{{$item->merek}}</td>
                  <td>{{$item->teknologi}}</td>
                  <td>{{$item->manufaktur}}</td>
                  <td>{{$item->updated_at}}</td>
                  <td>2018-1-EER-OK</td>
                  <td><a class="btn btn-sm btn-info" href="">detail</a></td>
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
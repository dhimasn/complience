@extends('layouts.master')
@section('title-menu', 'Volume Produk')
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
                <th>tahun {{$th1}}</th>
                <th>tahun {{$th2}}</th>
                <th>% annual init increase</th>
                <th>Bobot Resiko</th>
              </thead>
              <tbody>
                @foreach ($highrisk as $item)
                <tr>
                  <td><a href="">{{$item['nomor_she']}}</a></td>
                  <td>{{$item['model']}}</td>
                  <td>{{$item['merek']}}</td>
                  <td>{{$item[$th1]}}</td>
                  <td>{{$item[$th2]}}</td>
                  <td>{{$item['percentage']}}</td>
                  <td>{{$item['bobot4']}}</td>
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
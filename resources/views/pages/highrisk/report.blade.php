@extends('layouts.master')
@section('title-menu', 'Report Non Compliance History')
@section('contents')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body p-2">
      <div class="text-left mb-2">
        <a class="btn btn-sm btn-primary" href="{{route('highrisk.tambahReport')}}">Tambah</a> 
      </div> 
        <div class="row">
          <div class="col-md-12">
            <table class="table table-comp table-responsive">
              <thead class="thead-comp">
                <th>Nomor SHE</th>
                <th>Model Produk</th>
                <th>Merek</th>
                <th>Kasus Ketidaksesuaian</th>
                <th>Kementerian/Lembaga Terkait</th>
                <th>Nama Inspektur</th>
                <th>Tanggal Temuan</th>
                <th>Bobot Resiko</th>
              </thead>
              <tbody>
                @foreach ($highrisk as $item)
                <tr>
                  <td><a href="">{{$item->no_she}}</a></td>
                  <td>{{$item->model}}</td>
                  <td>{{$item->merek}}</td>
                  <td>{{$item->ketidaksesuaian}}</td>
                  <td>{{$item->lembaga_terkait}}</td>
                  <td>{{$item->pengawas_id}}</td>
                  <td>{{$item->updated_at}}</td>
                  <td>{{$item->bobot}}</td>
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
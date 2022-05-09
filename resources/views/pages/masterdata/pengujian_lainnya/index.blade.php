@extends('layouts.master')
@section('title-menu', 'Pengujian Lainnya')
@section('contents')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body p-2">
        <div class="row">
          <div class="col-md-12">
            <table class="table table-comp table-responsive">
              <thead class="thead-comp">
                <th>Nomor SHE</th>
                <th>Model Produk</th>
                <th>Merek</th>
                <th>Kegiatan</th>
                <th>Tanggal Update</th>
                <th>Status</th>
              </thead>
              <tbody>
                @foreach ($compliences as $item)
                <tr>
                  <td><a href="{{route('masterdata.pengujian_lainnya.detail', $item->record_id)}}">{{$item->no_she}}</a></td>
                  <td>{{$item->model}}</td>
                  <td>{{$item->merek}}</td>
                  <td>{{$item->formulir4->kegiatan_lainnya}}</td>
                  <td>{{$item->updated_at}}</td>
                  <td>{{$status[$item->status] ?? ''}}</td>
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
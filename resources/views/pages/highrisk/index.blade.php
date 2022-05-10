@extends('layouts.master')
@section('title-menu', 'High Risk Produk')
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
                <th>Pengawas</th>
                <th>Lokasi Pengawasan</th>
                <th>Tanggal Inspeksi</th>
                <th>Verification Result</th>
              </thead>
              <tbody>
                @foreach ($highrisk as $item)
                <tr>
                  <td><a href="{{route('masterdata.inspeksi_visual.detail', $item->record_id)}}">{{$item->no_she}}</a></td>
                  <td>{{$item->model}}</td>
                  <td>{{$item->merek}}</td>
                  <td>{{$item->formulir1->pengawas->name}}</td>
                  <td>{{$item->formulir1->lokasi_pengawasan}}</td>
                  <td>{{$item->updated_at}}</td>
                  <td>{{$item->result}}</td>
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
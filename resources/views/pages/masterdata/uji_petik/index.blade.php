@extends('layouts.master')
@section('title-menu', 'Uji Petik')
@section('contents')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body p-2">
        <div class="row">
          <div class="col-md-12">
            <table class="table table-comp table-responsive">
              <thead class="thead-comp">
                <th>Record ID</th>
                <th>Nomor SHE</th>
                <th>Model Produk</th>
                <th>Merek</th>
                <th>Pengawas</th>
                <th>Lokasi Pengawasan</th>
                <th>Ketidaksesuaian (%)</th>
                <th>Status</th>
                <th>Tanggal Update</th>
              </thead>
              <tbody>
                @foreach ($compliences as $item)
                <tr class="{{null !== $item->formulir3 && $item->formulir3->validasiPengujian() == 'Tidak Sesuai' ? 'table-danger' : ''}}">
                  <td><a href="{{route('masterdata.uji_petik.detail', $item->record_id)}}">{{$item->record_id}}</a></td>
                  <td>{{$item->no_she}}</td>
                  <td>{{$item->model}}</td>
                  <td>{{$item->merek}}</td>
                  <td>{{$item->formulir1->pengawas->name}}</td>
                  <td>{{$item->ujipetik->lokasi_pengawasan}}</td>
                  <td>{{null !== $item->formulir3 ? $item->formulir3->deviasi_eer_she : '-'}}</td>
                  <td>{{$status[$item->status] ?? ''}}</td>
                  <td>{{$item->updated_at}}</td>
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
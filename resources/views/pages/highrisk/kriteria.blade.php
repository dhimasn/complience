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
                <th>No</th>
                <th>Kriteria</th>
                <th>Variabel Penilaian</th>
                <th>Bobot "0"</th>
                <th>Bobot "1"</th>
                <th>Bobot "2"</th>
                <th>Bobot "3"</th>
                <th>Action</th>
              </thead>
              <tbody>
                @foreach ($highrisk as $item)
                <tr>
                  <td><a href="">{{$item->id}}</a></td>
                  <td>{{$item->kriteria}}</td>
                  <td>{{$item->variabel_penilaian}}</td>
                  <td>{{$item->nol}}</td>
                  <td>{{$item->satu}}</td>
                  <td>{{$item->dua}}</td>
                  <td>{{$item->tiga}}</td>
                  <td><a class="btn btn-sm btn-info" href="{{route('highrisk.updateKriteria', $item->id)}}">ubah</a></td>
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
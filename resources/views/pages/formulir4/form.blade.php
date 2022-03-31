@extends('layouts.master')
@section('title-menu', 'Aktivasi Pendataan Round Robin Testing dan Pengujian Lainnya')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/vendor/select2/dist/css/select2.min.css')}}" type="text/css">
<style>
  .select2-container .select2-selection--single{
    padding: 0 !important;
    border-top: 1px solid #fff !important;
    border-right: 1px solid #fff !important;
    border-left: 1px solid #fff !important;
    border-bottom: 1px solid #e4e4e4 !important;
    color: #8898aa !important;
    font-size: .875rem !important;
  }
  .select2-selection__rendered{
    padding-left: 0 !important;
  }
</style>
@endsection
@section('contents')
<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-md-12">
            <div class="form-group">
              <label class="form-control-label">Kegiatan</label>
              <div class="row">
                <div class="col-md-3">
                  <select name="17" class="form-control form-complience">
                    <option value="1">Round Robin Testing</option>
                    <option value="2">Pengujian Ulang</option>
                    <option value="3">Lainnya</option>
                  </select>
                </div>
                <div class="col-md-3">
                  <input class="form-control form-complience" placeholder="Lainnya" name="9" value="">
                </div>
              </div>
            </div>
            <div class="form-group">
              <label class="form-control-label">Lab Uji Tujuan</label>
              <select name="17" class="form-control form-complience">
                <option value="1">Qualis</option>
                <option value="2">TUV Rheinland</option>
                <option value="3">B2TkE-BRIN</option>
                <option value="4">B4T-Kemenperin</option>
              </select>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="header-body">
  <div class="row align-items-center pb-1 ml-2">
    <div class="col-lg-12">
      <h6 class="h2 text-black d-inline-block mb-0">Detil Produk</h6>
    </div>
  </div>
</div>
<form action="{{route('formulir4.store')}}" method="post" enctype="multipart/form-data">
  @csrf
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <input type="hidden" name="id_product" value="" id="id_product">
                <label class="form-control-label">Nomor SHE/No Registrasi</label>
                <select name="1" id="" class="form-control form-complience select2">
                  <option value="" disabled selected="true">Pilih Nomor SHE/No Registrasi</option>
                  @foreach ($products as $id_product => $product)
                  <option value="{{$product['No. Registrasi/No. SHE']}}" data-id="{{$id_product}}" data-merek="{{$product['Merek']}}">{{$product['No. Registrasi/No. SHE']}}</option>
                  @endforeach
                </select>
              </div>
              <div class="form-group">
                <label class="form-control-label">Merek</label>
                <input class="form-control form-complience" name="2" id="merek" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas Pengenal (PK)</label>
                <input class="form-control form-complience" name="3" placeholder="" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Teknologi</label>
                <select name="4" class="form-control form-complience">
                  <option value="Standard">Standard</option>
                  <option value="Fixed Speed">Fixed Speed</option>
                  <option value="Inverter">Inverter</option>
                </select>
              </div>
              <div class="form-group">
                <label class="form-control-label">Manufaktur / Importir</label>
                <input class="form-control form-complience" name="5" placeholder="" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kode atau Tanggal Produksi</label>
                <input class="form-control form-complience" name="6" placeholder="" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Negara Asal</label>
                <input class="form-control form-complience" name="7" placeholder="" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Harga</label>
                <input class="form-control form-complience" name="8" placeholder="" value="" type="text">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="header-body">
    <div class="row align-items-center pb-1 ml-2">
      <div class="col-lg-12">
        <h6 class="h2 text-black d-inline-block mb-0">Pemeriksaan Visual</h6>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="form-control-label">Lampirkan foto LTHE</label>
                <input class="form-control" placeholder="" name="9" value="" type="file">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nomor SHE</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Jumlah Bintang</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="11" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nilai Efisiensi Energi (EER/CSPF)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="12" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Model Unit Dalam</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="13" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Model Unit Luar</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="14" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Daya</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="15" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas Pendingin</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="16" value="" type="text">
              </div>
            </div>
            {{-- <div class="col-md-8 mx-auto text-center">
              <table class="table align-items-center table-bordered">
                <thead class="thead-light">
                  <th>Lab Uji Tujuan</th>
                  <th>Tanggal Pengujian</th>
                </thead>
                <tbody>
                  <tr>
                    <td>Qualis</td>
                    <td><a href="http://">Klik Disini</a></td>
                  </tr>
                  <tr>
                    <td>TUV Rheinland</td>
                    <td><a href="http://">Klik Disini</a></td>
                  </tr>
                  <tr>
                    <td>B2TkE-BRIN</td>
                    <td><a href="http://">Klik Disini</a></td>
                  </tr>
                  <tr>
                    <td>B4T-Kemenperin</td>
                    <td><a href="http://">Klik Disini</a></td>
                  </tr>
                </tbody>
              </table>
            </div> --}}
          </div>
        </div>
      </div>
      <div class="text-center mb-6">
        <button class="btn btn-yellow button-comp" submit>
          Kirim untuk Aktivasi Formulir di Lab Uji
        </button>
      </div>
    </div>
  </div>
</form>
@endsection
@section('scripts')
<script src="{{asset('assets/vendor/select2/dist/js/select2.full.min.js')}}"></script>
<script>
  $(document).ready(function() {
    $('.select2').select2();
  });
  $('.select2').change(function(){
    var id = $(this).find(':selected').data('id');
    var merek = $(this).find(':selected').data('merek');
    $("#id_product").val(id);
    $("#merek").val(merek);
  });
</script>
@endsection
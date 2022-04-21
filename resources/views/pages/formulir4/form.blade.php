@extends('layouts.master')
@section('title-menu', 'Aktivasi Pendataan Round Robin Testing dan Pengujian Lainnya')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/vendor/select2/dist/css/select2.min.css')}}" type="text/css">
<style>
  .select2-container .select2-selection--single {
    padding: 0 !important;
    border-top: 1px solid #fff !important;
    border-right: 1px solid #fff !important;
    border-left: 1px solid #fff !important;
    border-bottom: 1px solid #e4e4e4 !important;
    color: #8898aa !important;
    font-size: .875rem !important;
  }

  .select2-selection__rendered {
    padding-left: 0 !important;
  }
</style>
@endsection
@section('contents')
<form action="{{route('formulir4.store')}}" method="post" enctype="multipart/form-data">
  @csrf
  <div class="row">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="form-control-label">Kegiatan</label>
                <div class="row">
                  <div class="col-md-6">
                    <select name="kegiatan" class="form-control form-complience" id="kegiatan_input">
                      <option value="3">Round Robin Testing</option>
                      <option value="4">Pengujian Ulang</option>
                      <option value="5">Lainnya</option>
                    </select>
                  </div>
                  <div class="col-md-6">
                    <input id="kegiatan_lainnya" class="form-control form-complience d-none" placeholder="Lainnya"
                      name="kegiatan_lainnya" value="">
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="form-control-label">Lab Uji Tujuan <span id="text_lebih">(Lebih dari satu)</span></label>
                <select name="lab_uji[]" class="form-control form-complience select2 input_lab" multiple="multiple">
                  @foreach ($labUjis as $labUji)
                    <option data-name="{{$labUji->nama}}" value="{{$labUji->id}}">{{$labUji->nama}}</option>
                  @endforeach
                </select>
              </div>
              <div class="form-group">
                <div class="listlab">
                </div>
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

  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <input type="hidden" name="id_product" value="" id="id_product">
                <label class="form-control-label">Nomor SHE/No Registrasi</label>
                <select required name="1" id="" class="form-control form-complience select2">
                  <option value="" disabled selected="true">Pilih Nomor SHE/No Registrasi</option>
                  @foreach ($products as $id_product => $product)
                  <option value="{{$product['No. Registrasi/No. SHE']}}" data-id="{{$id_product}}"
                    data-merek="{{$product['Merek']}}">{{$product['No. Registrasi/No. SHE']}}</option>
                  @endforeach
                </select>
              </div>
              <div class="form-group">
                <label class="form-control-label">Merek</label>
                <input class="form-control form-complience" required name="2" id="merek" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas Pengenal (PK)</label>
                <input class="form-control form-complience" required name="3" placeholder="" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Teknologi</label>
                <select required name="4" class="form-control form-complience">
                  <option value="Standard">Standard</option>
                  <option value="Fixed Speed">Fixed Speed</option>
                  <option value="Inverter">Inverter</option>
                </select>
              </div>
              <div class="form-group">
                <label class="form-control-label">Model</label>
                <input class="form-control form-complience" required name="model" placeholder="" value="" type="text">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="form-control-label">Manufaktur / Importir</label>
                <input class="form-control form-complience" required name="5" placeholder="" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kode atau Tanggal Produksi</label>
                <input class="form-control form-complience" required name="6" placeholder="" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Negara Asal</label>
                <input class="form-control form-complience" required name="7" placeholder="" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Harga</label>
                <input class="form-control form-complience" required name="8" placeholder="" value="" type="text">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  @foreach ($forms as $form)
  <div class="header-body">
    <div class="row align-items-center pb-1 ml-2">
      <div class="col-lg-12">
        <h6 class="h2 text-black d-inline-block mb-0">{{$form->title}}</h6>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              @foreach ($form->childForm as $child)
              <div class="form-group">
                <label class="form-control-label">{!!nl2br($child->data_point)!!}</label><br>
                {!!$helpers->formInput($child->data_entry_type, $child->id, $child->data_input)!!}
              </div>
              @endforeach
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  @endforeach
  <div class="text-center mb-6">
    <button class="btn btn-yellow button-comp" submit>
      Kirim untuk Aktivasi Formulir di Lab Uji
    </button>
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
  $(".input_lab").change(function(){
    var values = $(".input_lab option:selected").map(function() {
                    return $(this).data("name");
                  }).get();
    var text = "";
    var no = 1;
    for (var i = 0; i < values.length; i++) {
        value = no+". "+values[i];
        text += '<label class="form-control-label">'+value+'</label><br>';
        no++;
    }
    $(".listlab").empty();
    $(".listlab").append(text);
    console.log(values);
  });
  $("#kegiatan_input").change(function(){
    $(".listlab").empty();
    $(".input_lab").val([]).change();
    var value = $(this).val();
    if(value=="5"){
      $("#kegiatan_lainnya").removeClass('d-none');
    }else{
      $("#kegiatan_lainnya").addClass('d-none');
    }

    if(value=='3'){
      $(".input_lab").attr('multiple','multiple');
      $("#text_lebih").show();
          
    }else{
      $("#text_lebih").hide();
      $(".input_lab").removeAttr('multiple');
    }
  });
</script>
@endsection
@extends('layouts.master')
@section('title-menu', 'Hasil Pengujian Sampel')
@section('contents')
<div class="header-body">
  <div class="row align-items-center pb-1 ml-2">
    <div class="col-lg-12">
      <h6 class="h2 text-black d-inline-block mb-0">Informasi Umum</h6>
    </div>
  </div>
</div>
<form action="{{route('form3.store')}}" method="post" enctype="multipart/form-data">
  @csrf
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="form-control-label">Record ID</label>
                <input class="form-control form-complience" type="text" name="record_id" readonly
                  value="{{$complience->record_id}}">
                <input class="form-control form-complience" type="hidden" name="form_id" readonly
                  value="{{$complience->id}}">
              </div>
              <div class="form-group">
                <label class="form-control-label">Laboratorium Pengujian</label>
                <input type="hidden" name="lab_id" value="{{$complience->lab_uji}}">
                <input class="form-control form-complience" type="text" readonly
                  value="{{\Auth::user()->id_user_role == 3 ? \Auth::user()->labUji->nama : $complience->lab->nama}}">
              </div>
              <div class="form-group">
                <label class="form-control-label">Tanggal & Waktu Inspeksi Sampel</label>
                <input class="form-control form-complience" type="text" readonly value="{{$complience->updated_at}}">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nama Petugas Pemeriksa</label>
                <input class="form-control form-complience" name="nama_pemeriksa" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nama Petugas Persetujuan</label>
                <input class="form-control form-complience" name="nama_persetujuan" type="text">
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
        <h6 class="h2 text-black d-inline-block mb-0">Detail Produk</h6>
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
                <label class="form-control-label">Nomor SHE</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" readonly value="{{$complience->detail->no_she}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Merek</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" readonly value="{{$complience->detail->merek}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" readonly value="{{$complience->detail->kapasitas}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Teknologi</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" readonly value="{{$complience->detail->teknologi}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Informasi sampel sudah sesuai</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" readonly value="{{$complience->sampel_sesuai == '0' ? 'Tidak Sesuai' : 'Sesuai'}}" type="text">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="form-control-label">Manufaktur / Importir</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" readonly value="{{$complience->detail->manufaktur}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kode atau Tanggal Produksi</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" readonly value="{{$complience->detail->kode_produk}}" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Negara Asal</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" readonly value="{{$complience->detail->negara}}" type="text">
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
        <h6 class="h2 text-black d-inline-block mb-0">Data Nameplate Produk</h6>
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
                <label class="form-control-label">Nomor seri unit indoor</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="75" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nomor seri unit outdoor</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="76" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas normal (Btu/h)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="77" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Daya normal (W)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="78" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas maksimum (Btu/h)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="79" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Daya maksimum (W)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="80" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Tegangan (V)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="81" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Fase</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="82" value="" type="text">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="form-control-label">Hz</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="83" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Current (A)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="84" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Berat unit indoor (kg)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="85" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Berat unit outdoor (kg)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="86" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Dimensi unit indoor (mm, W*H*D)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="87" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Dimensi unit outdoor (mm, W*H*D)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="88" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Tipe refrigeran</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="89" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Muatan refrigeran</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="90" value="" type="text">
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
        <h6 class="h2 text-black d-inline-block mb-0">Hasil Pengujian</h6>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <table class="table table-striped table-bordered">
                <thead>
                    <th></th>
                    <th width="200px">Full-load</th>
                    <th width="200px">50% full-load</th>
                </thead>
                <tbody>
                  @php
                      $name = 91;
                  @endphp
                  @foreach ($pengujianForm as $form)
                  <tr>
                    <th>{{$form}}</th>
                    <td><input class="form-control form-complience" name="{{$name}}[]"></td>
                    <td><input class="form-control form-complience" name="{{$name}}[]"></td>
                  </tr>
                  @php
                      $name++;
                  @endphp
                  @endforeach
                 
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="header-body">
    <div class="row align-items-center pb-1 ml-2">
      <div class="col-lg-12">
        <h6 class="h2 text-black d-inline-block mb-0">Rekap Hasil Pengujian</h6>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <table class="table table-striped table-bordered">
                <thead>
                    <th></th>
                    <th>Pengujian</th>
                    <th>SHE</th>
                    <th>Nameplate</th>
                </thead>
                <tbody>
                  <tr>
                    <th>EER (Btu/h/W)</th>
                    <td><input class="form-control form-complience inputFormula" required type="number" id="eerPengujian_input" name="112[]"></td>
                    <td><input class="form-control form-complience inputFormula" required type="number" id="eerSHE_input" name="112[]"></td>
                    <td><input class="form-control form-complience inputFormula" required type="number" id="eerNP_input" name="112[]"></td>
                  </tr>
                  <tr>
                    <th>CSPF (Wh/Wh)</th>
                    <td><input class="form-control form-complience inputFormula" required type="number" id="cspfPengujian_input" name="113[]"></td>
                    <td><input class="form-control form-complience inputFormula" required type="number" id="cspfSHE_input" name="113[]"></td>
                    <td><input class="form-control form-complience inputFormula" required type="number" id="cspfNP_input" name="113[]"></td>
                  </tr>
                </tbody>
              </table>
              <div class="form-group mt-2 mb-4">
                <label class="form-control-label">Upload Data Hasil Lab Uji</label>
                <input class="form-control" name="114" value="" type="file">
              </div>
              <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
                <div class="row">
                  <div class="col-md-7 text-left">
                    <strong>Deviasi hasil pengujian terhadap EER SHE (%)</strong>
                  </div>
                  <div class="col-md-5 text-right">
                    <strong id="eerSHE"></strong>
                    <input type="hidden" name="eerSHE" id="input_eerSHE">
                  </div>
                </div>
              </div>
              <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
                <div class="row">
                  <div class="col-md-7 text-left">
                    <strong>Deviasi hasil pengujian terhadap CSPF SHE (%)</strong>
                  </div>
                  <div class="col-md-5 text-right">
                    <strong id="cspfSHE"></strong>
                    <input type="hidden" name="cspfSHE" id="input_cspfSHE">
                  </div>
                </div>
              </div>
              <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
                <div class="row">
                  <div class="col-md-7 text-left">
                    <strong>Deviasi hasil pengujian terhadap EER Nameplate (%)</strong>
                  </div>
                  <div class="col-md-5 text-right">
                    <strong id="eerNP"></strong>
                  </div>
                </div>
              </div>
              <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
                <div class="row">
                  <div class="col-md-7 text-left">
                    <strong>Deviasi hasil pengujian terhadap CSPF Nameplate (%)</strong>
                  </div>
                  <div class="col-md-5 text-right">
                    <strong id="cspfNP"></strong>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="text-center mb-6">
        <button class="btn btn-yellow button-comp" submit>
          Kirim
        </button>
      </div>
    </div>
  </div>
</form>
@endsection
@section('scripts')
    <script>
      $(".inputFormula").on("keyup change", function(e) {
        let eerPengujian_input = parseInt($("#eerPengujian_input").val());
        let eerSHE_input = parseInt($("#eerSHE_input").val());
        let eerNP_input = parseInt($("#eerNP_input").val());
        
        let cspfPengujian_input = parseInt($("#cspfPengujian_input").val());
        let cspfSHE_input = parseInt($("#cspfSHE_input").val());
        let cspfNP_input = parseInt($("#cspfNP_input").val());

        let eerSHE = ((eerPengujian_input/eerSHE_input) * 100) - 100;
        let cspfSHE = ((cspfPengujian_input/cspfSHE_input) * 100) - 100;
        let eerNP = ((eerPengujian_input/eerNP_input) * 100) - 100;
        let cspfNP = ((cspfPengujian_input/cspfNP_input) * 100) - 100;
        $("#eerSHE").text(roundTo(eerSHE, 7));
        $("#cspfSHE").text(roundTo(cspfSHE, 7));

        $("#input_eerSHE").val(roundTo(eerSHE, 7));
        $("#input_cspfSHE").val(roundTo(cspfSHE, 7));

        $("#eerNP").text(roundTo(eerNP, 7));
        $("#cspfNP").text(roundTo(cspfNP, 7));
      });
      function roundTo(n, digits) {
        if (digits === undefined) {
          digits = 0;
        }

        var multiplicator = Math.pow(10, digits);
        n = parseFloat((n * multiplicator).toFixed(11));
        var test =(Math.round(n) / multiplicator);
        return +(test.toFixed(digits));
      }
    </script>
@endsection
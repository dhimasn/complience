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
              <input class="form-control form-complience" name="75" value="{{$valueForm3['75']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Nomor seri unit outdoor</label>
              <input class="form-control form-complience" name="76" value="{{$valueForm3['76']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Kapasitas normal (Btu/h)</label>
              <input class="form-control form-complience" name="77" value="{{$valueForm3['77']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Daya normal (W)</label>
              <input class="form-control form-complience" name="78" value="{{$valueForm3['78']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Kapasitas maksimum (Btu/h)</label>
              <input class="form-control form-complience" name="79" value="{{$valueForm3['79']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Daya maksimum (W)</label>
              <input class="form-control form-complience" name="80" value="{{$valueForm3['80']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Tegangan (V)</label>
              <input class="form-control form-complience" name="81" value="{{$valueForm3['81']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Fase</label>
              <input class="form-control form-complience" name="82" value="{{$valueForm3['82']}}" type="text" readonly>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label class="form-control-label">Hz</label>
              <input class="form-control form-complience" name="83" value="{{$valueForm3['83']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Current (A)</label>
              <input class="form-control form-complience" name="84" value="{{$valueForm3['84']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Berat unit indoor (kg)</label>
              <input class="form-control form-complience" name="85" value="{{$valueForm3['85']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Berat unit outdoor (kg)</label>
              <input class="form-control form-complience" name="86" value="{{$valueForm3['86']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Dimensi unit indoor (mm, W*H*D)</label>
              <input class="form-control form-complience" name="87" value="{{$valueForm3['87']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Dimensi unit outdoor (mm, W*H*D)</label>
              <input class="form-control form-complience" name="88" value="{{$valueForm3['88']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Tipe refrigeran</label>
              <input class="form-control form-complience" name="89" value="{{$valueForm3['89']}}" type="text" readonly>
            </div>
            <div class="form-group">
              <label class="form-control-label">Muatan refrigeran</label>
              <input class="form-control form-complience" name="90" value="{{$valueForm3['90']}}" type="text" readonly>
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
                  <td><input class="form-control form-complience" value="{{$valueForm3[$name][0]}}" readonly name="{{$name}}[]"></td>
                  <td><input class="form-control form-complience" value="{{$valueForm3[$name][1]}}" readonly name="{{$name}}[]"></td>
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
                  <td><input class="form-control form-complience inputFormula" readonly id="eerPengujian_input" value="{{$valueForm3['112'][0]}}" name="112[]"></td>
                  <td><input class="form-control form-complience inputFormula" readonly id="eerSHE_input" value="{{$valueForm3['112'][1]}}" name="112[]"></td>
                  <td><input class="form-control form-complience inputFormula" readonly id="eerNP_input" value="{{$valueForm3['112'][2]}}" name="112[]"></td>
                </tr>
                <tr>
                  <th>CSPF (Wh/Wh)</th>
                  <td><input class="form-control form-complience inputFormula" readonly id="cspfPengujian_input" value="{{$valueForm3['113'][0]}}" name="113[]"></td>
                  <td><input class="form-control form-complience inputFormula" readonly id="cspfSHE_input" value="{{$valueForm3['113'][1]}}" name="113[]"></td>
                  <td><input class="form-control form-complience inputFormula" readonly id="cspfNP_input" value="{{$valueForm3['113'][2]}}" name="113[]"></td>
                </tr>
              </tbody>
            </table>
            <div class="form-group mt-2 mb-4">
              <label class="form-control-label">Upload Data Hasil Lab Uji</label>
              <br><a href="{{asset($valueForm3['114'])}}" target="_blank" class="btn btn-link">Lihat File</a>
            </div>
            <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
              <div class="row">
                <div class="col-md-7 text-left">
                  <strong>Variasi hasil pengujian terhadap EER SHE (%)</strong>
                </div>
                <div class="col-md-5 text-right">
                  <strong id="eerSHE"></strong>
                </div>
              </div>
            </div>
            <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
              <div class="row">
                <div class="col-md-7 text-left">
                  <strong>Variasi hasil pengujian terhadap CSPF SHE (%)</strong>
                </div>
                <div class="col-md-5 text-right">
                  <strong id="cspfSHE"></strong>
                </div>
              </div>
            </div>
            <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
              <div class="row">
                <div class="col-md-7 text-left">
                  <strong>Variasi hasil pengujian terhadap EER Nameplate (%)</strong>
                </div>
                <div class="col-md-5 text-right">
                  <strong id="eerNP"></strong>
                </div>
              </div>
            </div>
            <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
              <div class="row">
                <div class="col-md-7 text-left">
                  <strong>Variasi hasil pengujian terhadap CSPF Nameplate (%)</strong>
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
  </div>
</div>
@section('scripts')
    <script>
      $("document").ready(function(e){
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
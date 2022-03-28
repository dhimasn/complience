@extends('layouts.master')
@section('title-menu', 'Hasil Pengujian Sampel')
@section('contents')
<div class="header-body">
  <div class="row align-items-center pb-1">
    <div class="col-lg-12">
      <h6 class="h2 text-black d-inline-block mb-0">Informasi Umum</h6>
    </div>
  </div>
</div>
<form action="" method="post" enctype="multipart/form-data">
  @csrf
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label class="form-control-label">Record ID</label>
                <input class="form-control form-complience" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Laboratorium Pengujian</label>
                <input class="form-control form-complience" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Tanggal & Waktu Inspeksi Sampel</label>
                <input class="form-control form-complience" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nama Petugas Pemeriksa</label>
                <input class="form-control form-complience" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nama Petugas Persetujuan</label>
                <input class="form-control form-complience" type="text">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="header-body">
    <div class="row align-items-center pb-1">
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
            <div class="col-md-12">
              <div class="form-group">
                <label class="form-control-label">Nomor SHE</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Merek</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="11" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="12" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Teknologi</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="13" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Manufaktur / Importir</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="14" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kode atau Tanggal Produksi</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="15" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Negara Asal</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="16" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Informasi sampel sudah sesuai</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="16" value="" type="text">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="header-body">
    <div class="row align-items-center pb-1">
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
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Nomor seri unit outdoor</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas normal (Btu/h)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Daya normal (W)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Kapasitas maksimum (Btu/h)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Daya maksimum (W)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Tegangan (V)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Fase</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label class="form-control-label">Hz</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Current (A)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Berat unit indoor (kg)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Berat unit outdoor (kg)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Dimensi unit indoor (mm, W*H*D)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Dimensi unit outdoor (mm, W*H*D)</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Tipe refrigeran</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
              <div class="form-group">
                <label class="form-control-label">Muatan refrigeran</label>
                <input class="form-control form-complience" placeholder="Masukan Jawaban" name="10" value="" type="text">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="header-body">
    <div class="row align-items-center pb-1">
      <div class="col-lg-12">
        <h6 class="h2 text-black d-inline-block mb-0">Hasil Pengujian Full Load</h6>
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
                    <th>Full-load</th>
                    <th>50% full-load</th>
                </thead>
                <tbody>
                  <tr>
                    <th>Time (min)</th>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>Time</th>
                    <td></td>
                    <td></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="header-body">
    <div class="row align-items-center pb-1">
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
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>CSPF (Wh/Wh)</th>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                </tbody>
              </table>
              <div class="form-group mt-2 mb-4">
                <label class="form-control-label">Upload Data Hasil Lab Uji</label>
                <input class="form-control" name="10" value="" type="file">
              </div>
              <div class="text-right">*Hitung dengan formula</div>
              <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
                <div class="row">
                  <div class="col-md-7 text-left">
                    <strong>Variasi hasil pengujian terhadap EER SHE (%)</strong>
                  </div>
                  <div class="col-md-5 text-right">
                    Klik Disini
                  </div>
                </div>
              </div>
              <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
                <div class="row">
                  <div class="col-md-7 text-left">
                    <strong>Variasi hasil pengujian terhadap CSPF SHE (%)</strong>
                  </div>
                  <div class="col-md-5 text-right">
                    Klik Disini
                  </div>
                </div>
              </div>
              <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
                <div class="row">
                  <div class="col-md-7 text-left">
                    <strong>Variasi hasil pengujian terhadap EER Nameplate (%)</strong>
                  </div>
                  <div class="col-md-5 text-right">
                    Klik Disini
                  </div>
                </div>
              </div>
              <div class="alert alert-secondary mb-1 pt-1 pb-2" role="alert">
                <div class="row">
                  <div class="col-md-7 text-left">
                    <strong>Variasi hasil pengujian terhadap CSPF Nameplate (%)</strong>
                  </div>
                  <div class="col-md-5 text-right">
                    Klik Disini
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
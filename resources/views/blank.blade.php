<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  
  <title>{{ config('app.name') }}</title>
  <!-- Icons-->
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
  <link href="{{ asset('css/pace.css') }}" rel="stylesheet">
  <link href="{{ asset('css/styles.css') }}" rel="stylesheet">
  <!-- Main styles for this application-->
  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show">
  
  @include('partials.header')
  
  <div class="app-body">
    
    @include('partials.sidebar')
    
    <main class="main">

      <!-- Breadcrumb-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">Hello,{{Auth::user()->username}}</li>

        <!-- Breadcrumb Menu-->
        <li class="breadcrumb-menu d-md-down-none">
        
          @yield('breadcrumb')
      
        </li>
      </ol>

      <!-- Main Content -->
      <div class="container-fluid">
        <div class="animated fadeIn">

          @include('partials.errors')
          @isset($blankPage)
          
          <div class="row">
          @can('surat_tugas')
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-header bg-behance">
                  <i class="fa fa-envelope"></i>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jumlahSuratTugas}}</div>
                    <div class="text-uppercase text-muted small">Surat Tugas</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            @endcan

            @can('surat_permohonan')
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-header bg-behance">
                  <i class="fa fa-envelope"></i>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jumlahSuratPermohonan}}</div>
                    <div class="text-uppercase text-muted small">Surat Permohonan</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            @endcan

            @can('acc_berkas_kp')
            <div class="col-sm-6 col-lg-6">
              <div class="brand-card ">
                <div class="brand-card-header bg-teal ">
                  <div>
                    <div class="text-value">Verifikasi</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jumlahVerifikasiSuratBalasan}}</div>
                    <div class="text-uppercase text-muted small">Surat Balasan</div>
                  </div>
                  <div>
                    <div class="text-value">{{$jumlahVerifikasiBerkasKP}}</div>
                    <div class="text-uppercase text-muted small">Berkas KP</div>
                  </div>
                  <div>
                    <div class="text-value">{{$jumlahVerifikasiBerkasSeminar}}</div>
                    <div class="text-uppercase text-muted small">Berkas Seminar</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            @endcan

            @if(Auth::user()->can('sidebar_mhs') || Auth::user()->can('acc_nilai'))
            <div class="col-sm-12 col-lg-12">
              <div class="brand-card">
                <div class="brand-card-body bg-light-blue">
                  <div>
                    <div class="text-value">Status Mahasiswa</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jumlahSedangKP}}</div>
                    <div class="text-uppercase text-muted small">Sedang KP</div>
                  </div>
                  <div>
                    <div class="text-value">{{$jumlahMulaiBimbingan}}</div>
                    <div class="text-uppercase text-muted small">Mulai Bimbingan</div>
                  </div>
                  <div>
                    <div class="text-value">{{$jumlahSudahSeminar}}</div>
                    <div class="text-uppercase text-muted small">Sudah Seminar</div>
                  </div>
                  <div>
                    <div class="text-value">{{$jumlahSelesaiKP}}</div>
                    <div class="text-uppercase text-muted small">Selesai</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            @endcan

            @can('sidebar_mhs_bimbingan')
            <div class="col-sm-12 col-lg-12">
              <div class="brand-card">
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">Status Mahasiswa Bimbingan</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jumlahSedangKPDosen}}</div>
                    <div class="text-uppercase text-muted small">Sedang KP</div>
                  </div>
                  <div>
                    <div class="text-value">{{$jumlahMulaiBimbinganDosen}}</div>
                    <div class="text-uppercase text-muted small">Mulai Bimbingan</div>
                  </div>
                  <div>
                    <div class="text-value">{{$jumlahSudahSeminarDosen}}</div>
                    <div class="text-uppercase text-muted small">Sudah Seminar</div>
                  </div>
                  <div>
                    <div class="text-value">{{$jumlahSelesaiKPDosen}}</div>
                    <div class="text-uppercase text-muted small">Selesai</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-header bg-behance">
                  <i class="fa fa-user"></i>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jml_mhs_bimbingan}}</div>
                    <div class="text-uppercase text-muted small">Mahasiswa Bimbingan</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-header bg-behance">
                  <i class="fa fa-user"></i>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jml_nilai_tidak_disetujui}}</div>
                    <div class="text-uppercase text-muted small">Nilai Tidak Disetujui</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            @endcan

            @can('set_dosbing')
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-header bg-behance">
                  <i class="fa fa-user"></i>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jml_proposal_diajukan}}</div>
                    <div class="text-uppercase text-muted small">Pengajuan Proposal</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-header bg-behance">
                  <i class="fa fa-user"></i>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jml_permintaan_pembimbing}}</div>
                    <div class="text-uppercase text-muted small">Permintaan Pembimbing</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-header bg-behance">
                  <i class="fa fa-user"></i>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jml_proposal_revisi}}</div>
                    <div class="text-uppercase text-muted small">Revisi Proposal</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-header bg-behance">
                  <i class="fa fa-user"></i>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$jumlahKPLewat}}</div>
                    <div class="text-uppercase text-muted small">Pembatalan KP</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            @endcan

            @can('isi_proposal')
             <div class="col-lg-12" style="padding:0px;">
              <div class="brand-card">
                <div class="brand-card-body bg-info">
                    <div class="text-uppercase small">
                      <div class="container d-flex">
                        <div class="row align-items-center text-center mx-auto text-value" >
                          Pembimbing
                        </div>
                      </div>
                    </div>
                    <div class="text-value" style="color:white">{{$pembimbing_saya}}</div>
                </div>
              </div>
            </div>
            
            <div class="col-sm-3 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-body bg-success">
                  <div>
                    <div class="text-value">Status Proposal</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-uppercase text-muted middle">{{$status_proposal_saya}}</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-body bg-success">
                  <div>
                    <div class="text-value">Status KP</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                     <div class="text-uppercase text-muted middle">{{$status_kp_saya}}</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-body bg-danger">
                  <div>
                    <div class="text-value">Deadline Berkas KP</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                     <div class="text-uppercase text-muted middle">{{$sisa_tgl_berkas}}</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-body bg-danger">
                  <div>
                    <div class="text-value">Deadline Seminar</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                     <div class="text-uppercase text-muted middle">{{$sisa_tgl_seminar}}</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-body bg-info">
                  <div>
                    <div class="text-value">Berkas KP</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-uppercase text-muted middle">{{$status_berkas_kp_saya}}</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-body bg-info">
                  <div>
                    <div class="text-value">Berkas Seminar</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-uppercase text-muted middle">{{$status_berkas_seminar_saya}}</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-body bg-warning">
                  <div>
                    <div class="text-value">Surat Permohonan</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                     <div class="text-uppercase text-muted middle">{{$surat_permohonan_saya}}</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-body bg-warning">
                  <div>
                    <div class="text-value">Surat Tugas</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-uppercase text-muted middle">{{$surat_tugas_saya}}</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-body" style="background-color: #fd7e14">
                  <div>
                    <div class="text-value" style="color: white">Catatan Verifikasi</div>
                  </div>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-uppercase text-muted middle">{{$catatan_saya}}</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            

            @endcan

            @can('acc_nilai')
           <div class="col-sm-6 col-lg-3">
              <div class="brand-card">
                <div class="brand-card-header bg-behance">
                  <i class="fa fa-user"></i>
                </div>
                <div class="brand-card-body">
                  <div>
                    <div class="text-value">{{$persetujuan_nilai}}</div>
                    <div class="text-uppercase text-muted small">Persetujuan Nilai</div>
                  </div>
                </div>
              </div>
            </div><!--/.col-->
            @endcan
          </div><!--/.row-->

          
            
          </div><!--/.row-->

          @endisset

          @yield('content')
          

        </div>
      </div>

    </main>
  </div>
  @include('partials.footer')
  <!-- Bootstrap and necessary plugins-->
  <script src="{{ asset('js/app.js') }}"></script>
  <script src="{{ asset('js/pace.min.js') }}"></script>

  {{-- @include('toast::messages-jquery') --}}

  @stack('javascript')
  
</body>
</html>
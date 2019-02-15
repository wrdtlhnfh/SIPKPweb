<div class="sidebar">
    <nav class="sidebar-nav">
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link" href="/">
                    <i class="nav-icon icon-home"></i> Dashboard
                </a>
            </li>
            <li class="nav-title">Menu</li>
            <li class="nav-item">
                <!-- Admin -->
                <!-- can('manajemen_user')
                <a class="nav-link" href=" route('users.index') }}">
                    <i class="nav-icon icon-people"></i> Manajemen User
                </a>
                endcan -->
                @can('kelola_mahasiswa')
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('mahasiswa.index') }}">
                        <i class="nav-icon icon-settings"></i> Kelola Mahasiswa
                    </a>
                </li class="nav-item">
                @endcan
                @can('kelola_instansi')
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('instansi.index') }}">
                        <i class="nav-icon icon-settings"></i> Kelola Instansi
                    </a>
                </li>
                @endcan
                @can('kelola_dosen')
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('dosen.index') }}">
                        <i class="nav-icon icon-settings"></i> Kelola Dosen
                    </a>
                </li>
                @endcan
                @can('acc_nilai')
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('daftar_nilai') }}">
                        <i class="nav-icon icon-people"></i> Konfirmasi Nilai
                    </a>
                </li>
                @endcan
                @can('sidebar_mhs')
                <li class="nav-item nav-dropdown">
                    <!-- <li> -->
                        <a class="nav-link nav-dropdown-toggle" href="#">
                            <i class="nav-icon icon-people"></i>  Mahasiswa KP
                        </a>
                    <!-- </li> -->
                    <ul class="nav-dropdown-items">
                        @can('status_kp')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('lihat_status/kp') }}">
                                <i class="nav-icon icon-user"></i> Data Mahasiswa
                            </a>
                        </li>
                        @endcan
                        @can('proposal_mhs')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('proposalmhs') }}">
                                <i class="nav-icon icon-book-open"></i> Proposal
                            </a>
                        </li>
                        @endcan
                        @can('laporan_kp')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('laporan_kp') }}">
                                <i class="nav-icon icon-docs"></i> Laporan KP
                            </a>
                        </li>
                        @endcan
                        @can('edit_harian')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('lihat_kegiatan_harian') }}">
                                <i class="nav-icon icon-note"></i> Kegiatan Harian
                            </a>
                        </li>
                        @endcan
                        <!-- @can('acc_seminar')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('list_seminar') }}">
                                <i class="nav-icon icon-laptop"></i> Seminar KP
                            </a>
                        </li>
                        @endcan -->
                        @can('lihat_nilai')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('nilai.daftar') }}">
                                <i class="nav-icon icon-people"></i> Daftar Nilai
                            </a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcan
                @can('sidebar_mhs_bimbingan')
                <li class="nav-item nav-dropdown">
                    <!-- <li> -->
                    <a class="nav-link nav-dropdown-toggle" href="#">
                        <i class="nav-icon icon-puzzle"></i>  Bimbingan KP
                    </a>
                    <ul class="nav-dropdown-items">
                        @can('status_kp_bimbingan')
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('mahasiswa_kp_bimbingan') }}">
                                    <i class="nav-icon icon-people"></i> Data Mahasiswa
                                </a>
                            </li>
                        @endcan
                        @can('daftar_nilai_bimbingan')
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('daftar_nilai_bimbingan') }}">
                                    <i class="nav-icon icon-people"></i> Daftar Nilai
                                </a>
                            </li>
                        @endcan
                        @can('laporan_kp_bimbingan')
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('laporan_kp_bimbingan') }}">
                                    <i class="nav-icon icon-people"></i> Laporan KP
                                </a>
                            </li>
                            @endcan
                        @can('berkas_kp_bimbingan')
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('berkas_kp_bimbingan') }}">
                                    <i class="nav-icon icon-check"></i> Berkas KP
                                </a>
                            </li>
                        @endcan
                        @can('lihat_kegiatan_harian')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('list_harian') }}">
                                <i class="nav-icon icon-people"></i> Kegiatan Harian
                            </a>
                        </li>
                        @endcan
                    </ul>
                </li>
                @endcan
                 @can('acc_berkas_kp')
                <li class="nav-item nav-dropdown">
                    <!-- <li> -->
                        <a class="nav-link nav-dropdown-toggle" href="#">
                            <i class="nav-icon icon-note"></i>  Verifikasi
                        </a>
                    <!-- </li> -->
                    <ul class="nav-dropdown-items">
                         @can('acc_berkas_kp')
                            <li  class="nav-item">
                                <a class="nav-link" href="{{ url('berkas_kp') }}">
                                    <i class="nav-icon icon-check"></i> Berkas KP
                                </a>
                            </li>
                        @endcan
                        @can('berkas_seminar')
                            <li class="nav-item">
                                <a class="nav-link" href="{{url('list_seminar')}}">
                                    <i class="nav-icon icon-docs"></i> Berkas Seminar
                                </a>
                            </li>
                        @endcan
                        @can('surat_balasan')
                            <li class="nav-item">
                                <a class="nav-link" href=" {{ url('daftar_surat_balasan') }}">
                                    <i class="nav-icon icon-envelope-open"></i> Surat Balasan
                                </a>
                            </li>
                        @endcan
                    </ul>
                @endcan
               
                @can('surat_permohonan')
                <li  class="nav-item">
                    <a class="nav-link" href="{{ url('surat_permohonan') }}">
                        <i class="nav-icon icon-envelope-letter"></i> Surat permohonan
                    </a>
                </li>
                @endcan
                @can('surat_tugas')
                <li  class="nav-item">
                    <a class="nav-link" href="{{ url('surat_tugas') }}">
                        <i class="nav-icon icon-envelope-letter"></i> Surat Tugas
                    </a>
                </li>
                @endcan

                

                
                 @can('surat_balasan')

                <li class="nav-item">
                    <a class="nav-link" href=" {{ url('daftar_nilai_mahasiswa') }}">
                        <i class="nav-icon icon-star"></i> Cetak Nilai
                    </a>
                </li>
                @endcan

                <!-- mahasiswa -->
                @can('isi_proposal')
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('proposal.index') }}">
                        <i class="nav-icon icon-book-open"></i> Lihat Proposal
                    </a>
                </li>
                <a class="nav-link" href=" {{url('download_form') }}">
                    <i class="nav-icon icon-docs"></i> Form KP
                </a>
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{ url('berkas_kp') }}">
                        <i class="nav-icon icon-people"></i> Berkas KP
                    </a>
                </li> -->
                @endcan

                <!-- kaprodi -->
                @can('set_dosbing')
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('tambah.dosbing') }}">
                        <i class="nav-icon icon-people"></i> Pembimbing
                    </a>
                </li>
                @endcan

                @can('batalkan_kp')
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('kp.lewat') }}">
                        <i class="nav-icon icon-people"></i> Pembatalan
                    </a>
                </li>
                @endcan

                @can('laporan_tahunan')
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('kp_periode') }}">
                        <i class="nav-icon icon-book-open"></i> Laporan Tahunan
                    </a>
                </li>
                @endcan

                
                <!-- can('konfirmasi_kp')
                <a class="nav-link" href=" route('cek.proposal') }}">
                    <i class="nav-icon icon-people"></i> Proposal
                </a>
                endcan -->

                <!-- all -->

                
                
                
                

                
            </li>
        </ul>
    </nav>
    <button class="sidebar-minimizer brand-minimizer" type="button"></button>
</div>
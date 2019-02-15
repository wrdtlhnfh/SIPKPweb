<?php 
 
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/home', 'HomeController@blankDashboard')->name('home');

Route::group(['middleware' => 'auth'], function () {
    Route::get('/', 'HomeController@blankDashboard');

    Route::get('profile', 'ProfileController@show')->name('profile.show');
    Route::get('profile/edit', 'ProfileController@edit')->name('profile.edit');
    Route::patch('profile', 'ProfileController@update')->name('profile.update');
    Route::get('password', 'ProfileController@editpassword')->name('password.show');
    Route::patch('password', 'ProfileController@storepassword')->name('password.store');
    Route::patch('profile/picture', 'ProfileController@profilePicture')->name('profile.picture');
    Route::post('users/deactivate/{id}', 'UserController@deactivate')->name('users.deactivate');
    Route::post('users/activate/{id}', 'UserController@activate')->name('users.activate');
    Route::get('surat_permohonan', 'LaporanController@daftar_surat_permohonan_kp');
    Route::get('surat_permohonan/{status}/status', 'LaporanController@daftar_surat_permohonan_kp_with_status');
    Route::get('surat_tugas', 'LaporanController@daftar_surat_tugas');
    Route::get('surat_tugas/{status}/status', 'LaporanController@daftar_surat_tugas_with_status');
    Route::get('harian_mahasiswa/{id}/cetak','LaporanController@cetak_harian');
    Route::get('laporan_kp/{tahun}/tahun','LaporanController@laporan_kp_per_tahun');


    //mahasiswa
    Route::resource('proposal','ProposalController');
    Route::get('proposal_by_status/{status}','KaprodiController@proposal_by_status');
    Route::get('kp_by_status/{status}','KaprodiController@kp_by_status');
    Route::get('tambah_anggota/{id}','ProposalController@tambah_anggota')->name('tambah_anggota.add');
    Route::get('selesai','ProposalController@selesai_kp')->name('selesai.add');
    Route::delete('hapus_anggota/{id}','ProposalController@hapus_anggota')->name('tambah_anggota.hapus_anggota');
    Route::post('tambah_anggota','ProposalController@storedata')->name('tambah_anggota.storedata');
    Route::get('selesai/mahasiswakp/{id}','MahasiswaKPController@selesai')->name('selesai.mhs');
    Route::patch('selesai/mahasiswakp/{id}','MahasiswaKPController@selesaiSave')->name('selesai.kp');
    Route::get('seminar/{id}','MahasiswaKPController@seminar')->name('seminar.mhs');
    Route::patch('seminar/{id}','MahasiswaKPController@storeseminar')->name('seminar.selesai');
    Route::get('nilaikp/{id}','MahasiswaKPController@nilaikp')->name('nilai.kp');
    Route::get('statuspro/{id}','MahasiswaKPController@status_proposal')->name('status.proposal');
    Route::get('detail_mahasiswa/{id}','MahasiswaKPController@detail_mahasiswa')->name('detail.mahasiswa');
    Route::resource('harian','KegiatanHarianController');
    Route::get('tulis_harian/{id}','KegiatanHarianController@tulis_harian')->name('tulis_harian');
    Route::get('cetak_harian','KegiatanHarianController@cetak')->name('harian.cetak');
    Route::patch('statuspro/{id}','MahasiswaKPController@store_status_proposal')->name('storestatus.proposal');

    //kaprodi
    Route::get('proposalmhs','KaprodiController@proposal_mahasiswa')->name('proposal.mhs');
    Route::get('proposalmhs/{status}/status','KaprodiController@proposal_mahasiswa_with_status');
    Route::get('proposalmhs/{id}','KaprodiController@lihat_proposal')->name('lihat.proposal');
    Route::patch('proposalmhs/{id}','KaprodiController@store_catatan_proposal')->name('store.catatan');
    Route::get('dosbing','KaprodiController@dosen_pembimbing')->name('tambah.dosbing');
    Route::patch('dosbing/edit','KaprodiController@store_dosbing')->name('store.dosbing');
    Route::get('kp_lewat','KaprodiController@kp_lewat')->name('kp.lewat');
    Route::get('lihat_kegiatan_harian','KaprodiController@lihat_kegiatan_harian');
    Route::patch('kp_batal','KaprodiController@kp_batal')->name('kp.batal');

    //Sekjur
    Route::get('cek_proposal','SekjurController@cek_proposal')->name('cek.proposal');
    Route::get('daftar_nilai','SekjurController@daftar_nilai')->name('nilai.daftar');
    Route::get('daftar_nilai_bimbingan','SekjurController@daftar_nilai_bimbingan');
    Route::post('verifikasi_nilai','SekjurController@acc_nilai')->name('kp.acc_nilai');

    
    //dosen
  
    route::get('harian_mahasiswa/{id}','DosenController@harian_mahasiswa');
    Route::get('edit_balasan/{id}','DosenController@edit_balasan');
    Route::get('input_nilai/{id}','DosenController@input_nilai');
    Route::post('update_nilai_kp','DosenController@update_nilai_kp');
    Route::patch('update_balasan','DosenController@update_balasan')->name('harian.update_balas');



    //admin
    Route::patch('update_harian','KegiatanHarianController@update_harian')->name('harian.update_harian');
    Route::get('edit_harian/{id}','KegiatanHarianController@edit_harian');
    Route::get('list_harian/','KaprodiController@lihat_kegiatan_harian_bimbingan');
    Route::resource('mahasiswa', 'MahasiswaController');
    Route::get('berkas_kp', 'MahasiswaKPController@acc_berkas_kp');
    Route::get('kp/{tahun}/tahun', 'MahasiswaKPController@kp_per_tahun');
    Route::get('kp_periode', 'MahasiswaKPController@kp_periode');
    Route::get('berkas_kp_bimbingan', 'MahasiswaKPController@berkas_kp_bimbingan');
    Route::get('laporan_kp', 'MahasiswaKPController@list_laporan_kp');
    Route::get('laporan_kp_bimbingan', 'MahasiswaKPController@list_laporan_kp_bimbingan');
    Route::post('verifikasi_berkas_kp','MahasiswaKPController@verifikasi_berkas_kp')->name('kp.verifikasi');
    Route::post('tambah_catatan_verifikasi/{id}','MahasiswaKPController@tambah_catatan_verifikasi')->name('berkas_kp.catatan');
    Route::get('revisi_berkas_kp', 'MahasiswaKPController@revisi_berkas_kp');
    Route::get('lihat_status/kp', 'KaprodiController@lihat_status_kp');
    Route::get('lihat_status/kp/{status}', 'KaprodiController@lihat_status_kp_terpilih');
    Route::get('mahasiswa_kp_bimbingan', 'KaprodiController@mahasiswa_kp_bimbingan');
    Route::get('mahasiswa_kp_bimbingan/{status}', 'KaprodiController@mahasiswa_kp_bimbingan_terpilih');

    Route::resource('instansi', 'InstansiController');
    Route::resource('dosen','DosenController');
    Route::get('daftar_surat_balasan','ProposalController@surat_balasan');
    Route::post('acc_surat_balasan','ProposalController@acc_surat_balasan')->name('acc.balasan');
    Route::get('list_seminar','MahasiswaKPController@list_seminar');
    Route::post('acc_seminar','MahasiswaKPController@acc_seminar')->name('acc.seminar');
    Route::get('berkas_seminar','MahasiswaKPController@berkas_seminar');

    
    //all
    Route::get('download_form','ProposalController@download_form');
    Route::get('surat_tugas/{mk_id}/cetak','LaporanController@surat_tugas');
    Route::get('daftar_nilai_mahasiswa','LaporanController@daftar_nilai');
    Route::get('nilai/{mk_id}/cetak','LaporanController@surat_daftar_nilai');
    Route::get('surat_permohonan_kp/{proposal}/cetak','LaporanController@surat_permohonan_kp');
    Route::get('seminar_kp','ProposalController@seminar_kp');
    Route::get('berkas/{id}/seminar','ProposalController@berkas_kp');
    Route::get('berita_acara/{id}/seminar','ProposalController@berita_acara');
    Route::get('update_berita_acara/{id}/seminar','ProposalController@update_berita_acara');
    Route::get('registrasi','ProposalController@isidata')->name('registrasi.create');
    Route::post('registrasi','ProposalController@storedata')->name('registrasi.storedata');
    
  
});

Route::get('image/{type}/{id}', 'FileController@image')->name('get.image');
Route::get('file/{type}/{id}', 'FileController@file_balasan');
Route::get('file/{type}/{id}/lihat', 'FileController@lihat_file');
//mobile
Route::post('mobile/login','MobileController@login')->name('mobile.login');
Route::post('mobile/store_harian','MobileController@store_harian')->name('mobile.store_harian');
Route::get('mobile/{id_mhs}/profil','MobileController@profil');
Route::get('mobile/{mhs_kp_id}/harian','MobileController@harian_mahasiswa');

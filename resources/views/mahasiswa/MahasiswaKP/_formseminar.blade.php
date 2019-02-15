@php($now = \Carbon\Carbon::now()->format("Y-m-d")) 
<div class="form-group">
    
    <label for="nama"> Nama</label>
    {{ Form::text('nama', Auth::user()->biodata->nama, ['class' => 'form-control', 'disabled'=>true]) }}
</div>
<div class="form-group">
<label for="nim"> NIM</label>
    {{ Form::text('nim', Auth::user()->biodata->nim, ['class' => 'form-control','disabled'=>true]) }}

</div>
<div class="form-group">

    <label for="role">Judul Laporan</label>
    {{ Form::text('judul_laporan', $mahasiswa_kp->judul_laporan,['class' => 'form-control','disabled'=>true])}}
    
</div>


<div class="form-group">
    <label for="mulai_kp"> Tanggal Seminar</label>
    {{ Form::date('tanggal_seminar', (isset($mahasiswa_kp) && $mahasiswa_kp->tanggal_seminar ? $mahasiswa_kp->tanggal_seminar : date('d-m-Y')), ['class' => 'form-control']) }}
</div>
<div class="form-group">
<label for="judul_laporan">Jam Seminar</label>
   {{ Form::time('jam_seminar', (isset($mahasiswa_kp) && $mahasiswa_kp->jam_seminar ? $mahasiswa_kp->jam_seminar : time('H-i-s')), ['class' => 'form-control']) }}

</div>

<div class="form-group">
<label for="judul_laporan">Ruang Seminar</label>
    {{ Form::text('ruang_seminar', null, ['class' => 'form-control', 'required']) }}

</div>


<div class="form-group">
    <label for="tanda_terima">Daftar Hadir</label>
    {{ Form::file('daftar_hadir', ['class' => 'form-control', 'required']) }}
</div>
<div class="form-group">
    <label for="tanda_terima">Berita Acara</label>
    {{ Form::file('berita_acara', ['class' => 'form-control', 'required']) }}
</div>
<div class="form-group">
    <label for="tanda_terima">Laporan KP </label>
    <br>
    <a  class="text-muted small" style="font-style: italic">laporan yang diupload harus dilengkapi lembar pengesahan</a>
 
    {{ Form::file('laporan_kp', ['class' => 'form-control', 'required']) }}
</div>

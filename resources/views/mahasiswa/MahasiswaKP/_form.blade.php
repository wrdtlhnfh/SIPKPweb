<div class="form-group">
	
	<label for="nama"> Nama</label>
	{{ Form::text('nama', Auth::user()->biodata->nama, ['class' => 'form-control', 'disabled'=>true]) }}
</div>
<div class="form-group">
<label for="nim"> NIM</label>
	{{ Form::text('nim', Auth::user()->biodata->nim, ['class' => 'form-control','disabled'=>true]) }}

</div>
<div class="form-group">
<label for="judul_laporan"> Judul Laporan</label>
	{{ Form::text('judul_laporan', null, ['class' => 'form-control', 'required']) }}

</div>
<div class="form-group">
    <label for="tanda_terima">Tanda Terima Laporan</label>
    {{ Form::file('tanda_terima_laporan', ['class' => 'form-control', 'required']) }}
</div>
<div class="form-group">
    <label for="tanda_terima">Laporan Kegiatan</label>
    {{ Form::file('lap_kegiatan', ['class' => 'form-control', 'required']) }}
</div>
<div class="form-group">
    <label for="tanda_terima">nilai lapangan </label>
    {{ Form::file('nilai_lapangan', ['class' => 'form-control', 'required']) }}
</div>
<div class="form-group">
    <label for="tanda_terima">Sertifikat KP </label>
    {{ Form::file('sertifikat_kp', ['class' => 'form-control', 'required']) }}
</div>

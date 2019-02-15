<div class="form-group">
	<label for="nama"> Nama</label>
	{{ Form::text('nama', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	<label for="gelar_depan"> Gelar Depan</label>
	{{ Form::text('gelar_depan', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	<label for="gelar_belakang"> Gelar Belakang</label>
	{{ Form::text('gelar_belakang', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
    <label for="email">Email</label>
    {{ Form::text('email', $email, ['class' => 'form-control'])}}
</div>

<div class="form-group">
	<label for="nim"> NIP</label>
	{{ Form::text('nip', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	<label for="nidn"> NIDN</label>
	{{ Form::text('nidn', null, ['class' => 'form-control']) }}
</div>

<!-- <div class="form-group">
    <label for="username">Username</label>
    {{ Form::text('username', $username, ['class' => 'form-control'])}}
</div>
 -->

<div class="form-group">
	<label for="nohp"> No HP</label>
	{{ Form::number('nohp', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	<label for="tempat_lahir"> Tempat Lahir</label>
	{{ Form::text('tempat_lahir', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	<label for="tanggal_lahir"> Tanggal Lahir</label>
	{{ Form::date('tanggal_lahir', (isset($mahasiswa) && $mahasiswa->tanggal_lahir ? $mahasiswa->tanggal_lahir : date('d-m-Y')), ['class' => 'form-control']) }}
</div>
<div class="form-group">
	<label for="jenis_kelamin"> Jenis Kelamin</label>
	{{ Form::select('jenis_kelamin', array('1' => 'Laki - Laki', '2' => 'Perempuan'), null,['class' => 'form-control']) }}
</div>

<div class="form-group">
	<label for="nama"> Nama</label>
	{{ Form::text('nama', null, ['class' => 'form-control']) }}
</div>


<div class="form-group">
	<label for="nim"> NIM</label>
	{{ Form::text('nim', null, ['class' => 'form-control','maxlength'=>10]) }}
</div>

<div class="form-group">
    <label for="email">Email</label>
    {{ Form::text('email', $email, ['class' => 'form-control'])}}
</div>


<!-- <div class="form-group">
    <label for="username">Username</label>
    {{ Form::text('username', $username, ['class' => 'form-control'])}}
</div>
 -->
<div class="form-group">
    <label for="password">Password</label>
    {{ Form::input('password', 'password', null, ['class' => 'form-control'])}}
</div>

<div class="form-group">
	<label for="angkatan"> Angkatan</label>
	{{ Form::number('angkatan', null, ['class' => 'form-control']) }}
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
<div class="form-group">
	<label for="nohp"> No HP</label>
	{{ Form::text('nohp', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	<label for="jalur_masuk"> Jalur Masuk</label>
	{{ Form::select('jalur_masuk', array('1' => 'SNMPTN', '2' => 'SBMPTN', '3' => 'Mandiri'), null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	<label for="status_masuk"> Status Masuk</label>
	{{ Form::select('status_masuk', array('1' => 'Baru', '2' => 'Pindahan'), null, ['class' => 'form-control']) }}
</div>

<div class="form-group">
    <label for="avatar">Photo</label>
    {{ Form::file('avatar', ['class' => 'form-control']) }}
</div>

<!-- dd(mahasiswa_kp->id); -->
<div class="form-group">
    <label for="hari_tanggal">Hari/Tanggal</label>
    {{ Form::date('hari_tanggal',null, ['class' => 'form-control','readonly' => 'true'])}}
   <!--  {!! Form::input('hari_tanggal','start_date',date('Y-m-d'),['class' => 'form-control','disabled'=>true]) !!} -->
</div>

<div class="form-group">
	<label for="kegiatan"> Kegiatan</label>
	{{ Form::textarea('kegiatan', null, ['class' => 'form-control','rows' => '5']) }}
</div>

<!-- <div class="form-group"> -->
	
	{{Form::hidden('id', $harian->id,  ['class' => 'form-control']) }}
<!-- </div> -->
<!-- dd(mahasiswa_kp->id); -->
<div class="form-group">
    <label for="hari_tanggal">Hari/Tanggal</label>
    {{ Form::date('hari_tanggal',date("Y-m-d"), ['class' => 'form-control','readonly'=>true])}}
   <!--  {!! Form::input('hari_tanggal','start_date',date('Y-m-d'),['class' => 'form-control','disabled'=>true]) !!} -->
</div>


<div class="form-group">

 	
	<label for="kegiatan"> Kegiatan</label>
	@if(count($endkp) > 0)
	{{ Form::textArea('kegiatan', null, ['class' => 'form-control','rows' => '5','disabled']) }}
	@else

	{{ Form::textArea('kegiatan', null, ['class' => 'form-control','rows' => '5']) }}
	@endif
</div>

<div class="form-group">
	
	{{ Form::hidden('id', $user->biodata->mahasiswa_kp[0]->id,  ['class' => 'form-control']) }}
</div>

 
@php($now = \Carbon\Carbon::now()->format("Y-m-d"))	

<div class="form-group">
	<label for="mulai_kp"> Tanggal Mulai</label>
	{{ Form::date('mulai_kp', (isset($proposal) && $proposal->mulai_kp ? $proposal->mulai_kp : date('d-m-Y')), ['class' => 'form-control','min' => $now]) }}
</div>

<div class="form-group">
	<label for="selesai_kp"> Tanggal Selesai</label>
	{{ Form::date('selesai_kp', (isset($proposal) && $proposal->selesai_kp ? $proposal->selesai_kp : date('d-m-Y')), ['class' => 'form-control','min' => $now]) }}
</div>

<div class="form-group">
    <label for="judul">Judul</label>
    {{ Form::text('judul',null, ['class' => 'form-control'])}}
</div>
<div class="form-group">
    <label for="latar_belakang">Latar Belakang</label>
    {{ Form::textarea('latar_belakang',null, ['class' => 'form-control','rows' => '20'])}}
</div>


<div class="form-group">
	<label for="tujuan"> Tujuan</label>
	{{ Form::textarea('tujuan', null, ['class' => 'form-control','rows' => '20']) }}
</div>


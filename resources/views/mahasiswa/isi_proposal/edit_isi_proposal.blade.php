@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	<a href=""></a>
@endsection

{{-- Content utama --}}
@section('content')
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				
				{!! Form::model($proposal, ['route' => ['proposal.update', $proposal->id], 'method' => 'patch', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}

				<div class="card-header">
					<i class="fa fa-align-justify"></i> Update proposal
				</div>

				<div class="card-body">
					<label>Catatan</label>
					<textarea class="form form-control" disabled="disabled" rows="5">
						{{$proposal->catatan}}
					</textarea>
					<br>
					@include('mahasiswa.isi_proposal._form')

				</div>

				<div class="card-footer">
					<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Update</button>
					<button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-ban"></i> Reset</button>
				</div>

				{{ Form::close() }}
			</div>
		</div>
	</div>

<script src="/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace( 'latar_belakang' );
    CKEDITOR.replace( 'tujuan' );
</script>
@endsection
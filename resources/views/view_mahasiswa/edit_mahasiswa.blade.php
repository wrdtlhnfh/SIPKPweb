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
				
				{!! Form::model($mahasiswa, ['route' => ['mahasiswa.update', $mahasiswa->id], 'method' => 'patch', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}

				<div class="card-header">
					<i class="fa fa-align-justify"></i> Update Mahasiswa
				</div>

				<div class="card-body">
					
					@include('view_mahasiswa._form_edit')

				</div>

				<div class="card-footer">
					<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Update</button>
					<button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-ban"></i> Reset</button>
				</div>

				{{ Form::close() }}
			</div>
		</div>
	</div>
@endsection
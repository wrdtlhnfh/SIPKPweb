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
				
				{!! Form::model($instansi, ['route' => ['instansi.update', $instansi->id], 'method' => 'patch', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}

				<div class="card-header">
					<i class="fa fa-align-justify"></i> Update instansi
				</div>

				<div class="card-body">
					
					@include('admin.instansi._form')

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
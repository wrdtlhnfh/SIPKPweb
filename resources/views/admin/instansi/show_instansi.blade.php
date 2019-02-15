@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	<a class="btn" href="{{ route('instansi.destroy', [ $instansi->id ]) }}" onclick="event.preventDefault();confirmDelete();"><i class="icon-trash"></i> Hapus</a>
	<a class="btn" href="{{ route('instansi.edit', [$instansi->id]) }}"><i class="icon-list"></i> Edit</a>
	<a class="btn" href="{{ route('instansi.index') }}"><i class="icon-list"></i> List</a>

	<form style="display: none" action=" {{route('instansi.destroy', [$instansi->id])}} " method="post" id="form-delete">
		@csrf
		@method('delete')
	</form>

@endsection


{{-- Content Utama --}}
@section('content')
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<i class="fa fa-align-justify"></i> Informasi instansi
				</div>

				<div class="card-body">
					<form action="" method="post">
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Nama </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $instansi->nama }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Lokasi </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $instansi->lokasi }}
								</p>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
@endsection

@push('javascript')
<script type="text/javascript">
	function confirmDelete()
	{
		if(confirm('Anda yakin akan menghapus instansi ini?'))
		{
			form = document.querySelector('#form-delete');
			form.submit();
		}
	}
</script>
@endpush
@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	<a class="btn" href="{{ route('instansi.create') }}"><i class="icon-plus"></i> Tambah</a>
@endsection

{{-- Content Utama --}}
@section('content')

<div class="row"> 
	<div class="col-md-12">
		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> Daftar Instansi
			</div>

			<div class="card-body">
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Nama</th>
							<th class="text-center">Lokasi</th>
							<th class="text-center">Aksi</th>
							
						</tr>
					</thead>
					<tbody>
						@foreach($instansis as $instansi)
						<tr>
							<td> {{ $instansi->id}} </td>
							<td> {{ $instansi->nama }} </td>
							<td> {{ $instansi->lokasi }} </td>
							
							<td class="text-center">
								<a href=" {{route('instansi.show', [$instansi->id])}} " class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a>
								<a href=" {{route('instansi.edit', [$instansi->id])}} " class="btn btn-sm btn-outline-warning"><i class="fa fa-pencil"></i></a>
								<button onclick = "event.preventDefault();confirmDelete('{{ route('instansi.destroy', [$instansi->id]) }}');" class="btn btn-sm btn-outline-danger"><i class="fa fa-trash"></i></button>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
				
			</div>
			<div class="card-footer">
				{{ $instansis->links() }}
			</div>
		</div>
	</div>
</div>

<form style="display: none" action="#" method="post" id="form-delete">
	@csrf
	@method('delete')
</form>


@endsection

@push('javascript')
<script>
	function confirmDelete(url)
	{
		if(confirm('Anda yakin akan menghapus data instansi ini?'))
		{
			form = document.querySelector('#form-delete');
			form.action = url;
			form.submit();
		}
	}
</script>

@endpush
@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	<a class="btn" href="{{ route('dosen.create') }}"><i class="icon-plus"></i> Tambah</a>
@endsection

{{-- Content Utama --}}
@section('content')

<div class="row"> 
	<div class="col-md-12">
		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> Daftar dosen
			</div>

			<div class="card-body">
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">NIP</th>
							<th class="text-center">Nidn</th>
							<th class="text-center">Nama</th>
							<th class="text-center">Email</th>
							<th class="text-center">Aksi</th>
						</tr>
					</thead>
					<tbody>
						@foreach($dosens as $dosen)
						<tr>
							<td> {{ $dosen->nip}} </td>
							<td> {{ $dosen->nidn}} </td>
							<td> {{ $dosen->nama }} </td>
							<td> {{ $dosen->user['email'] }} </td>
							<td class="text-center">
								<a href=" {{route('dosen.show', [$dosen->id])}} " class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a>
								<a href=" {{route('dosen.edit', [$dosen->id])}} " class="btn btn-sm btn-outline-warning"><i class="fa fa-pencil"></i></a>
								<button onclick = "event.preventDefault();confirmDelete('{{ route('dosen.destroy', [$dosen->id]) }}');" class="btn btn-sm btn-outline-danger"><i class="fa fa-trash"></i></button>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
			<div class="card-footer">
				{{ $dosens->links() }}
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
		if(confirm('Anda yakin akan menghapus data dosen ini?'))
		{
			form = document.querySelector('#form-delete');
			form.action = url;
			form.submit();
		}
	}
</script>
@endpush
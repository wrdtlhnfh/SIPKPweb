@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	<a class="btn" href="{{ route('mahasiswa.create') }}"><i class="icon-plus"></i> Tambah</a>
@endsection

{{-- Content Utama --}}
@section('content')

<div class="row"> 
	<div class="col-md-12">
		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> Daftar Mahasiswa
			</div>

			<div class="card-body">
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">Nim</th>
							<th class="text-center">Nama</th>
							<th class="text-center">Email</th>
							<th class="text-center">Angkatan</th>						
							<th class="text-center">Aksi</th>
						</tr>
					</thead>
					<tbody>
						@foreach($mahasiswas as $mahasiswa)
						<tr>
							<td> {{ $mahasiswa->nim }} </td>
							<td> {{ $mahasiswa->nama }} </td>
							<td> {{ $mahasiswa->user['email'] }} </td>
							<td> {{ $mahasiswa->angkatan}} </td>
							<td class="text-center">
								<a href=" {{route('mahasiswa.show', [$mahasiswa->id])}} " class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a>
								<a href=" {{route('mahasiswa.edit', [$mahasiswa->id])}} " class="btn btn-sm btn-outline-warning"><i class="fa fa-pencil"></i></a>
								<button onclick = "event.preventDefault();confirmDelete('{{ route('mahasiswa.destroy', [$mahasiswa->id]) }}');" class="btn btn-sm btn-outline-danger"><i class="fa fa-trash"></i></button>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
			<div class="card-footer">
				{{ $mahasiswas->links() }}
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
		if(confirm('Anda yakin akan menghapus data mahasiswa ini?'))
		{
			form = document.querySelector('#form-delete');
			form.action = url;
			form.submit();
		}
	}
</script>
@endpush
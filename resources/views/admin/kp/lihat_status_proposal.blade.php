@extends('blank')

{{-- Menu Breadcrumb --}} 
@section('breadcrumb')
	<a class="btn" href="{{ route('proposal.create') }}"><i class="icon-plus"></i> Tambah</a>
@endsection

{{-- Content Utama --}}
@section('content')

<div class="row"> 
	<div class="col-md-12">
		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> Daftar proposal
			</div>

			<div class="card-body">
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Judul</th>
							<th class="text-center">Instansi</th>
							<th class="text-center">Status</th>							
						</tr>
					</thead>
					<tbody>
						@foreach($mhs_kps as $id_anggota)
						<tr>
							<td> {{ $id_anggota->id}} </td>
							<td> {{ $id_anggota->proposal->judul }} </td>
							<td> {{ $id_anggota->proposal->instansi->nama }} </td>
							<td> {{ optional($id_anggota->proposal->status_p)->status }} </td>
						</tr>
						@endforeach
					</tbody>
				</table>
				
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
		if(confirm('Anda yakin akan menghapus data proposal ini?'))
		{
			form = document.querySelector('#form-delete');
			form.action = url;
			form.submit();
		}
	}
</script>

@endpush
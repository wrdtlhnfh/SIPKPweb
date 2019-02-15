@extends('blank')

{{-- Menu Breadcrumb --}} 
@section('breadcrumb')

@endsection

{{-- Content Utama --}}
@section('content')

<div class="row"> 
	<div class="col-md-12">
		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> Daftar Proposal
			</div>

			<div class="card-body">
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Judul</th>
							<th class="text-center">Instansi</th>
							<th class="text-center">Status</th>
							<th class="text-center">Aksi</th>							
						</tr>
					</thead>
					<tbody>
						@foreach($proposal as $pro)
						<tr>
							<td> {{ $pro->id}} </td>
							<td> {{ $pro->judul }} </td>
							<td> 
							@isset($pro->instansi->nama)
								{{ $pro->instansi->nama }}
							@endisset
							</td>
							<td>
								@isset($pro->status_p->status)
								{{$pro->status_p->status}}
								@endisset
							 
							  </td>
							
						
						
								<td class="text-center">
								
								<a href=" {{route('lihat.proposal', [$pro->id])}} " class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a>
							
							</td>
							
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
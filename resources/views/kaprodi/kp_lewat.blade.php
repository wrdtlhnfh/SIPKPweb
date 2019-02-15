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
				<i class="fa fa-align-justify"></i> Pembatalan Kerja Praktek
			</div>

			<div class="card-body">
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Nim</th>
							<th class="text-center">Nama</th>
							<th class="text-center">Instansi KP</th>
							<th class="text-center">Mulai</th>
							<th class="text-center">Selesai</th>
							<th class="text-center">Deadline</th>
							<th class="text-center">Status</th>
							<th class="text-center">Aksi</th>							
						</tr>
					</thead>
					<tbody>
						@php($no = 1)
						@foreach($mahasiswa_kp as $mkp)
						<form style="display: none" action="#" method="post" id="form-batal">
	@csrf
	@method('patch')
	{{ Form::hidden('id', $mkp->id, ['class' => 'form-control']) }}

	
	
</form>

						<tr>
							<td> {{ $no++}} </td>
							<td> <a href="{{url('detail_mahasiswa/'.$mkp->mhs->nim)}}">{{ $mkp->mhs->nim }}</a> </td>
							<td> {{ $mkp->mhs->nama }} </td>
							<td> 
							@isset($mkp->proposal->instansi->nama)
								{{ $mkp->proposal->instansi->nama }}
							@endisset
							</td>
							<td>{{ $mkp->mulai_kp}}</td>				
							<td>{{ $mkp->selesai_kp}}</td>				
							<td>{{ $mkp->deadline_seminar}}</td>
							<td>
							@isset($mkp->statuskp->status_kp)				
								{{ $mkp->statuskp->status_kp}}
							@endisset				
							</td>
							<td class="text-center">
								<button onclick = "event.preventDefault();confirmDelete('{{ route('kp.batal') }}');" class="btn btn-sm btn-outline-danger"><i class="fa fa-times"></i></button>
							</td>

							
						</tr>
						@endforeach
					</tbody>
				</table>
				
			</div>
			
			
	</div>
</div>




@endsection

@push('javascript')
<script>
	function confirmDelete(url)
	{
		if(confirm('Anda yakin akan Membatalkan Kerja Praktek?'))
		{
			form = document.querySelector('#form-batal');
			form.action = url;
			form.submit();
		}
	}
</script>

@endpush
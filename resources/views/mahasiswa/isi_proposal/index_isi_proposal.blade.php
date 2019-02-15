@extends('blank')

{{-- Menu Breadcrumb --}} 
@section('breadcrumb')
	@php($lastData = App\MahasiswaKP::where('mahasiswa_id',Auth::user()->id)->orderBy('id','desc')->first())
	
	@if(count($mhs_kps) == 0 || $lastData->proposal->status_proposal == 3)
	<a class="btn" href="{{ route('proposal.create') }}"><i class="icon-plus"></i> Tambah</a>
	@endif
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
				@if(count($mhs_kps) == 0)
					Data Proposal Belum Ada, Silahkan Tambahkan Proposal Terlebih Dahulu
				@else
				@if($lastData->status==2 || $lastData->status==5)
			
				<a class="btn" href="{{ route('proposal.create') }}"><i class="icon-plus"></i> Ajukan Prososal Lagi</a>	
						
				@endif
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Judul</th>
							<th class="text-center">Instansi</th>
							<th class="text-center">Status</th>
							<th class="text-center">Administrasi KP</th>
							<th class="text-center">Aksi</th>							
						</tr>
					</thead>
					<tbody>
						@php($no = 1)
						@foreach($mhs_kps as $id_anggota)
						<tr>
							<td> {{ $no++}} </td>
							<td> {{ $id_anggota->proposal->judul }} </td>
							<td> {{ $id_anggota->proposal->instansi->nama }} </td>
							<td> {{ optional($id_anggota->proposal->status_p)->status }} </td>

						
							<td class="text-center">
								
								@if($id_anggota->proposal->status_proposal == 2)

								@if ($id_anggota->status != 5 && $id_anggota->status != 2)
								<a href=" {{route('status.proposal', [$id_anggota->id])}} " class="btn btn-sm btn-outline-info"><i class="fa fa-envelope"></i></a>
								@else
								<button class="btn btn-sm btn-outline-info" disabled=""><i class="fa fa-envelope"></i></button>
								@endif
								@else
								<button class="btn btn-sm btn-outline-info" disabled=""><i class="fa fa-envelope"></i></button>
								@endif

								@if($id_anggota->status == 3)
								@if ($id_anggota->status != 5 && $id_anggota->status != 2)
								<a href=" {{route('tulis_harian', [$id_anggota->id])}} " class="btn btn-sm btn-outline-dark"><i class="fa fa-book"></i></a>
								@else
								<button class="btn btn-sm btn-outline-dark" disabled=""><i class="fa fa-book"></i></button>
								@endif
								@else
								<button class="btn btn-sm btn-outline-dark" disabled=""><i class="fa fa-book"></i></button>
								@endif

								@php($now = \Carbon\Carbon::now()->format("Y-m-d"))
								@if($now >= $id_anggota->selesai_kp && $id_anggota->selesai_kp != null)
								@if ($id_anggota->status != 5 && $id_anggota->status != 2)
								<a href=" {{route('selesai.mhs', [$id_anggota->id])}} " class="btn btn-sm btn-outline-success"><i class="fa fa-check-circle"></i></a>
								@else
								<button class="btn btn-sm btn-outline-succes" disabled=""><i class="fa fa-check-circle"></i></button>
								@endif
								@else
								<button class="btn btn-sm btn-outline-succes" disabled=""><i class="fa fa-check-circle"></i></button>								
								@endif

								@if($id_anggota->status == 6||$id_anggota->status == 10)
									@if ($id_anggota->status != 5 && $id_anggota->status != 2)
									<a href=" {{route('seminar.mhs', [$id_anggota->id])}} " class="btn btn-sm btn-outline-danger"><i class="fa fa-laptop"></i></a>
									@else
									<button class="btn btn-sm btn-outline-danger" disabled=""><i class="fa fa-laptop"></i></button>
									@endif
								@else
								<button class="btn btn-sm btn-outline-danger" disabled=""><i class="fa fa-laptop"></i></button>
								@endif
								
								@if($id_anggota->status == 4)
								@if ($id_anggota->status != 5 && $id_anggota->status != 2)
								<a href=" {{route('nilai.kp', [$id_anggota->id])}} " class="btn btn-sm btn-outline-warning"><i class="fa fa-star"></i></a>
								@else
									<button class="btn btn-sm btn-outline-warning" disabled=""><i class="fa fa-star"></i></button>
								@endif
								@else
								<button class="btn btn-sm btn-outline-warning" disabled=""><i class="fa fa-star"></i></button>
								@endif

							</td>
							<td class="text-center">

								@if($id_anggota->proposal->status_proposal !=2&&$id_anggota->proposal->status_proposal !=3)
								<a href=" {{route('tambah_anggota.add', [$id_anggota->id])}} " class="btn btn-sm btn-outline-success"><i class="fa fa-user-plus"></i></a>
								<a href=" {{route('proposal.show', [$id_anggota->id])}} " class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a>
								<a href=" {{route('proposal.edit', [$id_anggota->id])}} " class="btn btn-sm btn-outline-warning"><i class="fa fa-pencil"></i></a>
								
								<button onclick = "event.preventDefault();confirmDelete('{{ route('proposal.destroy', [$id_anggota->id]) }}');" class="btn btn-sm btn-outline-danger"><i class="fa fa-trash"></i></button>
								@else
								<button class="btn btn-sm btn-outline-success" disabled=""><i class="fa fa-user-plus"></i></button>
								<a href=" {{route('proposal.show', [$id_anggota->id])}} " class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a>
								<button class="btn btn-sm btn-outline-warning" disabled=""><i class="fa fa-pencil"></i></button>
								
								<button class="btn btn-sm btn-outline-danger" disabled=""><i class="fa fa-trash"></i></button>
								@endif
							</td>
							
						</tr>
						@endforeach
					</tbody>
				</table>
				@endif
				
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
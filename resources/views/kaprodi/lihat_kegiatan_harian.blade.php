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
				<i class="fa fa-align-justify"></i> Kegiatan Harian
			</div>

			<div class="card-body">
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Nim</th>
							<th class="text-center">Nama</th>
							<th class="text-center">Angkatan</th>
							<th class="text-center">Aksi</th>							
						</tr>
					</thead>
					<tbody>
						@php($no=1)
						@foreach($mahasiswa_kp as $key)
						@php($mhs_kp = App\MahasiswaKP::find($key->id))
						<tr>
							<td> {{ $no++}} </td>
							<td> <a href="{{url('detail_mahasiswa/'.$mhs_kp->mahasiswa_id)}}">{{ $mhs_kp->mahasiswa_kp->nim}}</a> </td>
							<td> {{ $mhs_kp->mahasiswa_kp->nama }} </td>
							<td>{{ $mhs_kp->mahasiswa_kp->angkatan }}</td>				
							<td>
								<a href=" {{url('harian_mahasiswa/'.$mhs_kp->id)}} " class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a>
								@can('cetak_harian')
								<a href=" {{url('harian_mahasiswa/'.$mhs_kp->id.'/cetak')}} " class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a>
								@endcan
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
				
			</div>
			
			
	</div>
</div>

@endsection
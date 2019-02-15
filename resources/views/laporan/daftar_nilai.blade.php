@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')


{{-- Content Utama --}}
@section('content')

<div class="row"> 
	<div class="col-md-12">
		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> Daftar Nilai KP Mahasiswa
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
							<th class="text-center">Nilai KP</th>
							<th class="text-center">Aksi</th>
						</tr>
					</thead>
					<tbody>
						@php($no = 1)
						@foreach($mkp as $mk)
						<tr>
							<td> {{ $no++}} </td>
							<td> <a href="{{url('detail_mahasiswa/'.$mk->mahasiswa_id)}}">{{ $mk->mahasiswa_kp->nim}} </a></td>
							<td> {{ $mk->mahasiswa_kp->nama}} </td>
							<td> {{ $mk->proposal->instansi->nama }} </td>
							<td> {{ $mk->mulai_kp }} </td>
							<td> {{ $mk->selesai_kp }} </td>
							<td> {{ $mk->nilai_kp }} </td>
							
							<td class="text-center" style="white-space: nowrap;">
								<a href="{{url('nilai/'.$mk->id.'/cetak')}}" class="btn btn-sm btn-outline-info" > Cetak </a>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
			<div class="card-footer">
			</div>
		</div>
	</div>
</div>

@endsection

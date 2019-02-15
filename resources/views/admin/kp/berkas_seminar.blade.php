@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
 

{{-- Content Utama --}}
@section('content')

<div class="row"> 
	<div class="col-md-12">
		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> Daftar Seminar KP
			</div>

			<div class="card-body">
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Nim</th>
							<th class="text-center">Nama</th>
							<th class="text-center">Instansi KP</th>
							<th class="text-center">Daftar Hadir</th>
							<th class="text-center">Berita Acara</th>
							<th class="text-center">Laporan KP</th>
							
						</tr>
					</thead>
					<tbody>
						@php($no = 1)
						@foreach($mahasiswa_kp as $mk)
						<tr>
							<td> {{ $no++}} </td>
							<td> <a href="{{url('detail_mahasiswa/'.$mk->mahasiswa_id)}}">{{ $mk->mahasiswa_kp->nim}} </a></td>
							<td> {{ $mk->mahasiswa_kp->nama}} </td>
							<td> {{ $mk->proposal->instansi->nama }} </td>
							<td> <a href="{{ url('$mk->daftar_hadir')}}" download>Lihat</a>  </td>
							<td> <a href="{{ url('$mk->berita_acara')}}" download>Lihat </td>							<td> <a href="{Lihat" download"> Lihat</td>
							
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

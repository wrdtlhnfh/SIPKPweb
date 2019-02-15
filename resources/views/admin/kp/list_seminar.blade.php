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
							<th class="text-center">Status</th>
							<th class="text-center">Tanggal</th>
							<th class="text-center">Jam</th>
							<th class="text-center">Ruang</th>
							<th class="text-center">Daftar Hadir</th>
							<th class="text-center">Berita Acara</th>
							<th class="text-center">Laporan KP</th>
							
							@can('acc_seminar')
							<th class="text-center">Aksi</th>
							@endcan
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
							<td> {{ $mk->statuskp->status_kp }} </td>
							<td> {{ $mk->tanggal_seminar }} </td>
							<td> {{ $mk->jam_seminar }} </td>
							<td> {{ $mk->ruang_seminar }} </td>
							<td> 
							@if($mk->daftar_hadir)
								<a href="{{ url('file/'.$mk->get_type_daftar_hadir().'/'.$mk->get_file_daftar_hadir().'/lihat')}}" download>Lihat</a>  
							@endif
							</td>
							<td> 
							@if($mk->berita_acara)
								<a href="{{ url('file/'.$mk->get_type_berita_acara().'/'.$mk->get_file_berita_acara().'/lihat')}}" download>Lihat 
							@endif
							</td>
							<td> 
							@if($mk->laporan_kp)
								<a href="{{ url('file/'.$mk->get_type_laporan_kp().'/'.$mk->get_file_laporan_kp().'/lihat')}}" download> Lihat
							@endif
							</td>
							@can('acc_seminar')
							<td class="text-center" style="white-space: nowrap;">
								 {!! Form::open(['route' => 'acc.seminar', 'method' => 'post', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}
									{{ Form::hidden('id', $mk->id) }}
                					
                					<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-check-circle"></i></button>
                					<button type="submit" onclick = "event.preventDefault();inputVerifikasi('{{ route('berkas_kp.catatan', [$mk->id]) }}');" class="btn btn-sm btn-danger"><i class="fa fa-close"></i></button>
        						{{ Form::close() }}
                					

							</td>
							@endcan
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

<form style="display: none" action="#" method="post" id="tambahCatatan">
	@csrf
	<input type="text" name="isiCatatan" id="isiCatatan">
	<input type="text" name="statusKP" value="10">
</form>

@endsection

@push('javascript')
<script>
	function inputVerifikasi(url)
	{
		var name = prompt('Isikan Catatan','');
        if (name != null && name != "") {
        	var catatan = document.getElementById('isiCatatan');
        	catatan.value = name;
        	form = document.querySelector('#tambahCatatan');
			form.action = url;
			form.submit();
        } else {
            alert('isikan catatan terlebih dahulu');
        }
	}
</script>
@endpush
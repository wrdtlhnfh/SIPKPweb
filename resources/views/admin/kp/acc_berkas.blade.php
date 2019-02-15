@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')


{{-- Content Utama --}}
@section('content')
<!-- tadi atul ubah ini -->

<div class="row"> 
	<div class="col-md-12"> 
		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> Daftar Berkas Selesai KP
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
							<th class="text-center">Mulai</th>
							<th class="text-center">Selesai</th>
							<th class="text-center">Laporan Kegiatan</th>
							<th class="text-center">Tanda Terima Laporan</th>
							<th class="text-center">Nilai Lapangan</th>
							<th class="text-center">Sertifikat KP</th>
							@can('acc_berkas_kp')
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

							<td> {{ $mk->mulai_kp }} </td>
							<td> {{ $mk->selesai_kp }} </td>
							
							<td> 
							@if($mk->lap_kegiatan)
								<a href="{{ url('file/'.$mk->get_type_lap_kegiatan().'/'.$mk->get_file_lap_kegiatan().'/lihat')}}" download>Lihat</a>  
							@endif
							</td>
							<td> 
							@if($mk->tanda_terima_laporan)
								<a href="{{ url('file/'.$mk->get_type_tanda_terima_laporan().'/'.$mk->get_file_tanda_terima_laporan().'/lihat')}}" download>Lihat</a>  
							@endif
							</td>
						
							<td> 
							@if($mk->nilai_lapangan)
								<a href="{{ url('file/'.$mk->get_type_nilai_lapangan().'/'.$mk->get_file_nilai_lapangan().'/lihat')}}" download>Lihat</a>  
							@endif
							</td>
							<td> 
							@if($mk->sertifikat_kp)
								<a href="{{ url('file/'.$mk->get_type_sertifikat_kp().'/'.$mk->get_file_sertifikat_kp().'/lihat')}}" download>Lihat</a>  
							@endif
							</td>
							
							
							@can('acc_berkas_kp')
							<td class="text-center" style="white-space: nowrap;">
								 {!! Form::open(['route' => 'kp.verifikasi', 'method' => 'post', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}
									{{ Form::hidden('id', $mk->id) }}
                					
                					<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-check-circle"></i></button>
                					<button type="submit" onclick = "event.preventDefault();inputVerifikasi('{{ route('berkas_kp.catatan', [$mk->id]) }}');" class="btn btn-sm btn-danger"><i class="fa fa-close"></i></button>
                					
        						{{ Form::close() }}

								<!-- <a href="url('revisi_berkas_kp')}}" class="btn btn-sm btn-outline-info" > Lengkapi</a> -->
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
	<input type="text" name="statusKP" value="9">
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
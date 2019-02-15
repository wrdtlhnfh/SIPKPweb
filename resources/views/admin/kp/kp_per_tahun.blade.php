@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	<a class="btn" href="{{url('laporan_kp/'.$tahun.'/tahun') }}"><i class="icon-plus"></i> Cetak</a>
@endsection

{{-- Content Utama --}}
@section('content')
<!-- tadi atul ubah ini -->

<div class="row"> 
	<div class="col-md-12"> 
		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> DAFTAR MAHASISWA KERJA PRAKTEK TA.{{$tahun}} JURUSAN SISTEM INFORMASI
					<!-- <a class="btn" href="{{url('laporan_kp/'.$tahun.'/tahun') }}"><i class="icon-plus"></i> Cetak</a> -->
			</div>
			<br>
			<div class="col-md-12">
				
				<select name='tahun_kp' id='tahun_kp' class="form form-control" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
				
				@foreach($tahun_kp as $thn_kp)
					<option value="{{url('kp/'.$thn_kp->tahun.'/tahun')}}" {{$thn_kp->tahun == $tahun ? 'selected' : ''}}>{{$thn_kp->tahun}}</option>
				@endforeach
			</select>

			</div>
			
			<br>

			<div class="col-md-12 mb-4">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item">
						<a class="nav-link active show" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Data Mahasiswa</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#messages" role="tab" aria-controls="messages" aria-selected="false">Beban Dosen</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#ins" role="tab" aria-controls="ins" aria-selected="false">Data Instansi</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#mhs" role="tab" aria-controls="mhs" aria-selected="false">Status Mahasiswa</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active show" id="home" role="tabpanel">
						<div class="card-body">
							<table class="table table-responsive-sm table-bordered">
								<thead>
									<tr>
										<th class="text-center">No</th>
										<th class="text-center">Nama</th>
										<th class="text-center">Nim</th>
										<th class="text-center">Instansi KP</th>
										<th class="text-center">Lokasi KP</th>
										<th class="text-center">Bidang</th>
										<th class="text-center">Pembimbing</th>
										<th class="text-center">Tanggal KP</th>
										<th class="text-center">Jadwal Seminar</th>
										<th class="text-center">Laporan</th>
										<th class="text-center">Nilai</th>
									</tr>
								</thead>
								<tbody>
									@php($no = 1)
									@foreach($mahasiswa_kp as $mk)
									<tr>
										<td> {{ $no++}} </td>
										<td> {{ $mk->mahasiswa_kp->nama}} </td>
										<td> <a href="{{url('detail_mahasiswa/'.$mk->mahasiswa_id)}}">{{ $mk->mahasiswa_kp->nim}} </a></td>
										<td> {{ $mk->proposal->instansi->nama }} </td>
										<td> {{ $mk->proposal->instansi->lokasi }} </td>
										<td> {{ $mk->bidang}} </td>
										<td>
											@if($mk->data_pembimbing) 
												{{ $mk->data_pembimbing->nama}}
											@endif
										 </td>
										<td>
											@if($mk->mulai_kp)
										 		{{ $mk->mulai_kp }}
										 		<br> s/d
										 		<br>{{ $mk->selesai_kp }}
											@endif
								 		 </td>
										<td> 
											@if($mk->mulai_kp)
											{{ $mk->tanggal_seminar }} {{ $mk->jam_seminar }} 
											@endif
										</td>
										
										<td> 
										@if($mk->lap_kegiatan)
											<a href="{{ url('file/'.$mk->get_type_lap_kegiatan().'/'.$mk->get_file_lap_kegiatan())}}" download>Lihat</a>  
										@endif
										</td>
										
										<td>{{$mk->nilai_kp}}</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
						<div class="card-footer">
							{{$mahasiswa_kp->links()}}
						</div>
					</div>
					<div class="tab-pane" id="messages" role="tabpanel">
						<table class="table table-bordered">
							<th>Nama Dosen</th>
							<th>Beban Dosen</th>
							@foreach($beban_dosen as $bd)
								<tr>
									<td>{{App\Dosen::find($bd->pembimbing)->nama}}</td>
									<td>{{$bd->jml_beban}}</td>
								</tr>
							@endforeach
						</table>

					</div>
					<div class="tab-pane" id="ins" role="tabpanel">
						<table class="table table-bordered">
							<th>Instansi</th>
							<th>Jumlah</th>
							@foreach($kp_per_lokasi as $kl)
								<tr>
									<td>{{App\Instansi::find($kl->instansi_id)->nama}}</td>
									<td>{{$kl->jumlah}}</td>
								</tr>
							@endforeach
						</table>
					</div>
					<div class="tab-pane" id="mhs" role="tabpanel">
						<table class="table table-bordered">
							<th>Status</th>
							<th>Jumlah</th>
								<tr>
									<td>Selesai</td>
									<td>{{count($selesai)}}</td>
								</tr>
								<tr>
									<td>Batal</td>
									<td>{{count($batal)}}</td>
								</tr>
						</table>

					</div>
						
					

				</div>
			</div>
		</div>
	</div>
</div>

@endsection

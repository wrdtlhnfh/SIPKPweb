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
				<i class="fa fa-align-justify"></i> Daftar Surat Tugas
			</div>

			<div class="card-body">
				<select name='status_proposal' id='status_proposal' class="form form-control" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
					<option value="semua" selected>Semua</option>
					<option value="{{url('surat_tugas/0/status')}}">Belum Dicetak</option>
					<option value="{{url('surat_tugas/1/status')}}">Sudah Dicetak</option>
				</select>
				<br>
				<br>

				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Nim</th>
							<th class="text-center">Nama</th>
							<th class="text-center">Instansi</th>
							<th class="text-center">Dosbing</th>
							<th class="text-center">Status</th>
							<th class="text-center">Cetak</th>
							<th class="text-center">Aksi</th>							
						</tr>
					</thead>
					<tbody id='isi_tabel_proposal'>
					@php($no=1)
					@foreach($MahasiswaKP as $key => $value)
						@php($mkp = App\MahasiswaKP::find($value->id))
						<tr>
							<td>{{$no++}}</td>
							<td>{{$mkp->mahasiswa_kp->nim}}</td>
							<td>{{$mkp->mahasiswa_kp->nama}}</td>
							<td>
								@if($mkp->proposal->instansi)
								{{$mkp->proposal->instansi->nama}}
								@endif
							</td>
							<td>
								@if($mkp->dosbing)
								{{$mkp->dosbing->nama}}
								@endif
							</td>					
							<td>{{$mkp->statuskp->status_kp}}</td>
							<td>{{$mkp->status > 2 ? 'Sudah Dicetak' :  'Belum Dicetak'}}</td>
							<td>
								
								<a href=" {{url('surat_tugas/'.$mkp->id.'/cetak')}} " class="btn btn-sm btn-outline-info"><i class="fa fa-print"></i></a>
								
							</td>
						</tr>
					@endforeach
					</tbody>
				</table>
				
			</div>
			
			
	</div>
</div>

@endsection
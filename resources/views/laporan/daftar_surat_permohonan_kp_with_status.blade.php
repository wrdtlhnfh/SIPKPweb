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
				<select name='status_proposal' id='status_proposal' class="form form-control" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
					<option value="{{url('surat_permohonan')}}" selected>Semua</option>
					<option value="{{url('surat_permohonan/0/status')}}" {{$status == 0 ? 'selected' : ''}}>Belum Dicetak</option>
					<option value="{{url('surat_permohonan/1/status')}}" {{$status == 1 ? 'selected' : ''}}>Sudah Dicetak</option>
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
							<th class="text-center">Mulai</th>
							<th class="text-center">Selesai</th>
							<th class="text-center">Status</th>
							<th class="text-center">Aksi</th>							
						</tr>
					</thead>
					<tbody id='isi_tabel_proposal'>
					@php($no=1)
					@foreach($proposals as $key => $value)
						@php($pro = App\Proposal::find($value->id))
						<tr>
							<td>{{$no++}}</td>
							<td>
								@foreach($pro->mahasiswas as $mhs_kp)
								{{$mhs_kp->mhs->nim}}<br>
								@endforeach
							</td>
							<td>
								@foreach($pro->mahasiswas as $mhs_kp)
								{{$mhs_kp->mhs->nama}}<br>
								@endforeach
							</td>
							<td>
								@if($pro->instansi)
								{{$pro->instansi->nama}}
								@endif
							</td>
							<td>{{$pro->mulai_kp}}</td>
							<td>{{$pro->selesai_kp}}</td>
							<td>{{$pro->cetak_permohonan == 1 ? 'Sudah Dicetak' : 'Belum Dicetak'}}</td>
							<td>
								@if($pro->cetak_permohonan == 0)
								<a href=" {{url('surat_permohonan_kp/'.$pro->id.'/cetak')}} " class="btn btn-sm btn-outline-info"><i class="fa fa-print"></i></a>
								@endif
							</td>
						</tr>
					@endforeach
					</tbody>
				</table>
				
			</div>
			
			
	</div>
</div>

@endsection
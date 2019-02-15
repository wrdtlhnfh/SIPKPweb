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
				<i class="fa fa-align-justify"></i> Daftar Surat Balasan
			</div>

			<div class="card-body">

				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Mahasiswa</th>
							<th class="text-center">Judul</th>
							<th class="text-center">Instansi</th>
							<th class="text-center">Surat Balasan</th>
							<th class="text-center">Status</th>
							<th class="text-center">Aksi</th>							
						</tr>
					</thead>
					<tbody id='isi_tabel_proposal'>
						@php($no = 1)
						@foreach($kps as $key => $value)
						@php($kp = App\MahasiswaKP::find($value->id))
						
						<tr>
							<td> {{ $no++}} </td>
							<td>{{$kp->mhs->nama}}</td>
							@php($pro = App\proposal::find($kp->proposal_id))
							<td> {{ $pro->judul }} </td>
							<td> 
							@if(isset($pro->instansi->nama))
								{{$pro->instansi->nama }}
							@elseif(isset($pro->instansi_id))
								{{App\Instansi::find($pro->instansi_id)->nama}}
							@endif
							</td>
							<td>
								@isset($pro->surat_balasan)
								<a href="{{url('file/'.$pro->get_type_balasan().'/'.$pro->get_file_balasan())}}" download>Surat</a>
								@endisset	 
							</td>

							 {!! Form::open(['route' => 'acc.balasan', 'method' => 'post', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}
							<td>
								{{ Form::hidden('id', $kp->id) }}
								<select name="status" class="form form-control">
									<option value="1">Diterima</option>
									<option value="2">Ditolak</option>
								</select>
							</td>
							
							<td class="text-center">
								
                					
                					<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Verifikasi</button>

							
							</td>
        						{{ Form::close() }}
							
						</tr>
						@endforeach
					</tbody>
				</table>
				
			</div>
			<div class="card-footer">
				
			</div>
	</div>
</div>

<form style="display: none" action="#" method="post" id="form-delete">
	@csrf
	@method('delete')
</form>


@endsection

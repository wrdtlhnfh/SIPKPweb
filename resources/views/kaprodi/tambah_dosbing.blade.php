@extends('blank')

{{-- Menu Breadcrumb --}} 


{{-- Content Utama --}}
@section('content')

<div class="row"> 
	<div class="col-md-12">
		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> Beban Dosen
			</div>

			<div class="card-body">
				<table class="table table-bordered" >
					<thead>
						<th>Nama Dosen</th>
						<th>Beban</th>
					</thead>
					<tbody>
						@foreach($bebandosen as $key => $value)
						@php($dsn = App\Dosen::find($value->pembimbing))
						<tr>
							<td>{{$dsn->nama}}</td>
							<td>{{$value->beban}}</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>

		<div class="card" style="overflow-x: auto">
			<div class="card-header">
				<i class="fa fa-align-justify"></i> Daftar Mahasiswa KP
			</div>

			<div class="card-body">
				{!! Form::open(['route' => ['store.dosbing'], 'method' => 'patch', 'enctype' => 'multipart/form-data']) !!}
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Nama</th>
							<th class="text-center">Nim</th>
							<th class="text-center">Instansi KP</th>
							<th class="text-center">Status</th>
							<th class="text-center">Dosen Pembimbing</th>
						</tr>
					</thead>
					<tbody>
						@foreach($mhs_kps as $pro)
						<tr>
							<!-- <div class="form-group"> -->
							{{ Form::hidden('id[]', $pro->id, ['class' => 'form-control']) }}
							<!-- </div> -->
							<td> {{ $no++}}</td>
							<td> {{ $pro->mhs->nama }} </td>
							<td> {{ $pro->mhs->nim }} </td>
							
							<td>{{ $pro->proposal->instansi->nama }}</td>
							<td>{{ $pro->statuskp->status_kp }}</td>
							
							<td> 
								<p class="col-form-label" id="pembimbing<?php echo $pro->id ?>">
								@if(!empty($pro->pembimbing))
                                   	{{ Form::select('pembimbing[]', $dosen, $pro->pembimbing, ['class' => 'form-control'])}}
                                @else
                                	<a onclick="showPembimbing(<?php echo $pro->id; ?>)" href="#">Set Pembimbing</a>
                                	{{ Form::hidden('pembimbing[]', null, ['class' => 'form-control'])}}
                                @endif
                                </p>
                            </td>

							<!-- <td class="text-center">
							</td> -->
								
						</tr>
						@endforeach
					</tbody>
				</table>
				<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-pencil-square-o"></i> Ubah</button></td>
				{!! Form::close() !!}
			</div>
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

	function showPembimbing(id){
		var u = id;
		var ids = document.getElementById("pembimbing"+id);
		
		ids.innerHTML = '{!! Form::select('pembimbing[]', $dosen, null, ['class' => 'form-control']) !!}';
	}

</script>

@endpush
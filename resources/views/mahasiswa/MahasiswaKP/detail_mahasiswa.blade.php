 @extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	
@endsection


{{-- Content Utama --}}
@section('content')
	<div class="row">
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
					<i class="fa fa-align-justify"></i> Informasi Mahasiswa
				</div>

				<div class="card-body">
					<table class="table">
						<tr>
						    <td>NIM</td>
						    <td>:</td>
						    <td>{{$mahasiswa->nim}}</td>
						</tr>
						<tr>
						    <td>Nama</td>
						    <td>:</td>
						    <td>{{$mahasiswa->nama}}</td>
						</tr>
						<tr>
						    <td>Angkatan</td>
						    <td>:</td>
						    <td>{{$mahasiswa->angkatan}}</td>
						</tr>
						<tr>
						    <td>Tempat Lahir</td>
						    <td>:</td>
						    <td>{{$mahasiswa->tempat_lahir}}</td>
						</tr>
						<tr>
						    <td>Tanggal Lahir</td>
						    <td>:</td>
						    <td>{{$mahasiswa->tanggal_lahir}}</td>
						</tr>
						<tr>
						    <td>No HP</td>
						    <td>:</td>
						    <td>{{$mahasiswa->nohp}}</td>
						</tr>
						<tr>
						    <td>Jenis Kelamin</td>
						    <td>:</td>
						    <td>{{$mahasiswa->gender()}}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	
<div class="col-md-4">
    <div class="card">
       
        <div class="card-body" id="collapseExample">
            <div class="text-center">
            <img src="{{ route('get.image', ['profile-pict', $mahasiswa->user->avatar]) }}" class="img-fluid img-thumbnail" />
            </div>
        </div>
    </div>
</div>
<div class="col-md-12">
<table class="table table-bordered">
						<thead>
							<th class="text-center">No</th>
							<th class="text-center">Instansi</th>
							<th class="text-center">Mulai</th>
							<th class="text-center">Selesai</th>
							<th class="text-center">Status</th>
							<th class="text-center">Pembimbing</th>
						</thead>
						<tbody>
							@php($no=1)
							@foreach($mahasiswa->mahasiswa_kp as $mk)
							<tr>
								<td>{{$no++}}</td>
								<td>
									@isset($mk->proposal)
									@isset($mk->proposal->instansi)
									{{$mk->proposal->instansi->nama}}
									@endisset
									@endisset
								</td>
								<td>{{$mk->mulai_kp}}</td>
								<td>{{$mk->selesai_kp}}</td>
								<td>
									@isset($mk->statuskp)
									{{$mk->statuskp->status_kp}}
									@endif
								</td>
								<td>
									@isset($mk->dosbing)
									{{$mk->dosbing->nama}}
									@endif
								</td>
							</tr>
							@endforeach
						</tbody>

					</table>
</div>
@endsection
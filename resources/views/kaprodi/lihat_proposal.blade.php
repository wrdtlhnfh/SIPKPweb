 @extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	

@endsection


{{-- Content Utama --}}
@section('content')
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<i class="fa fa-align-justify"></i> Detail Proposal KP
				</div>

					<form action="" method="post">
						
				<div class="card-body">
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Anggota Kelompok</label>
							<div class="col-md-9">
							
									
									<table class="" border="1">
					                    <thead>
					                      <th>Nim</th>
					                      <th>Nama</th>
					                      <th>Bidang</th>
					                    </thead>
					                    <tbody>
					                        @foreach($anggotas as $anggota)
					                         
					                        <tr>
					                            <td>{{ optional($anggota->mahasiswa_kp)->nim }} </td>
					                            <td>{{ optional($anggota->mahasiswa_kp)->nama }} </td>
					                            <td>{{ $anggota->bidang }} </td>
					                        </tr>
					                        @endforeach
					                    </tbody>
					                </table>
								
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Instansi KP</label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{ $proposal->instansi['nama'] }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Mulai KP</label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{ $proposal->mulai_kp }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Selesai KP</label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{ $proposal->selesai_kp }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Lokasi KP </label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{ $proposal->instansi['lokasi'] }}
									
								</p>
							</div>
						</div>
						
					</form>
				</div>
			</div>
		</div>

		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<i class="fa fa-align-justify"></i> Proposal Kerja Praktek
				</div>

				<div class="card-body">
					<form action="" method="post">
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Judul</label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{$proposal->judul }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Latar Belakang</label>
							<div class="col-md-9">
								

								<p class="col-form-label">
									: {!!$proposal->latar_belakang!!}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Tujuan</label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {!!$proposal->tujuan!!}
									
								</p>
							</div>
						</div>
						
					</form>
				</div>
			</div>
		</div>

		@can('ubah_status_proposal')
		<div class="col-md-12"> 
        <div class="card">

           {!! Form::model($proposal, ['route' => ['store.catatan', $proposal->id], 'method' => 'patch', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}

           <div class="card-header">
                <i class="fa fa-align-justify"> Status </i>
            </div>

            <div class="card-body">

               
				<div class="form-group">
						<label for="jenis_kelamin"> Status</label>
						{{ Form::select('status_proposal', array('2' => 'Diterima', '3' => 'Ditolak', '4' => 'Revisi'), null,['class' => 'form-control']) }}
				</div>
				<div class="form-group">
    				<label for="judul">Catatan</label>
   					 {{ Form::textarea('catatan',null, ['class' => 'form-control','rows' => '5'])}}
				</div>
                
                
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Simpan</button>
                
            </div>

            {{ Form::close() }}

        </div>
    </div>
    @endcan


	</div>
@endsection

@push('javascript')

@endpush
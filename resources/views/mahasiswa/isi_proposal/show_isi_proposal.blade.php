 @extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	

	<form style="display: none" action=" {{route('proposal.destroy', [$proposal->id])}} " method="post" id="form-delete">
		@csrf
		@method('delete')
	</form>

@endsection


{{-- Content Utama --}}
@section('content') 
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<i class="fa fa-align-justify"></i> Informasi Mahasiswa
				</div>

				<div class="card-body">
					<form action="" method="post">
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Nama </label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{Auth::user()->biodata->nama}}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Nim </label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{Auth::user()->biodata->nim}}
								</p> 
							</div>
						</div>
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
							<label class="col-md-3 col-form-label"> Lokasi KP </label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{ $proposal->instansi['lokasi'] }}
									
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Status Proposal </label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{ $proposal->status_p['status']}}
									
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
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<i></i> Latar Belakang		
										<div class="col-md-12">
											
												<p class="col-form-label">
												{!! $proposal->latar_belakang !!}
												</p>
											
										</div>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<i></i> Tujuan
										<div class="col-md-12">
											
												<p class="col-form-label">
													{!!$proposal->tujuan!!}
												</p>
											
										</div>
								</div>
							</div>
						</div>
						
						@php($kp = App\MahasiswaKP::where('mahasiswa_id',Auth::user()->id)->where('proposal_id',$proposal->id)->where('status',4)->first())
						@if($kp)
						<!-- <div class="form-group row">
							<label class="col-md-3 col-form-label">Nilai</label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{$kp->nilai_kp }}
									
								</p>
							</div>
						</div> -->
						@endif
					</form>
				</div>
			</div>
		</div>

	</div>
@endsection

@push('javascript')
<script type="text/javascript">
	function confirmDelete()
	{
		if(confirm('Anda yakin akan menghapus proposal ini?'))
		{
			form = document.querySelector('#form-delete');
			form.submit();
		}
	}
</script>
<script src="/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace( 'latar_belakang' );
    CKEDITOR.replace( 'rumusan' );
</script>
@endpush
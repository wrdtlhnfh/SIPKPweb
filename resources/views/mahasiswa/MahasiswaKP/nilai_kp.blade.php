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
					<i class="fa fa-align-justify"></i> Nilai KP
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
							<label class="col-md-3 col-form-label"> Nilai KP </label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{ $mahasiswa_kp->nilai_kp}}
									
								</p>
							</div>
						</div>
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
@endpush
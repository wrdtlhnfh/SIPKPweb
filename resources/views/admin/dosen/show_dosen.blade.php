@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	<a class="btn" href="{{ route('dosen.destroy', [ $dosen->id ]) }}" onclick="event.preventDefault();confirmDelete();"><i class="icon-trash"></i> Hapus</a>
	<a class="btn" href="{{ route('dosen.edit', [$dosen->id]) }}"><i class="icon-list"></i> Edit</a>
	<a class="btn" href="{{ route('dosen.index') }}"><i class="icon-list"></i> List</a>

	<form style="display: none" action=" {{route('dosen.destroy', [$dosen->id])}} " method="post" id="form-delete">
		@csrf
		@method('delete')
	</form>

@endsection


{{-- Content Utama --}}
@section('content')
	<div class="row">
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
					<i class="fa fa-align-justify"></i> Informasi dosen
				</div>

				<div class="card-body">
					<form action="" method="post">
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Username</label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $dosen->user['username'] }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Email</label>
							<div class="col-md-9">
								<p class="col-form-label"> {{ $dosen->user['email'] }} </p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Password</label>
							<div class="col-md-9">
								<p class="col-form-label">*******</p>
							</div>
						</div>
						<div class="form-group row">
                        	<label class="col-md-3 col-form-label">Role</label>
	                        <div class="col-md-9">
	                            @foreach($roles as $role)
	                                <span class="badge badge-pills badge-primary">{{ $role }} </span>
	                            @endforeach
	                        </div>
                    	</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Nama </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $dosen->nama }}
								</p>
							</div>
						</div>
					
						
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> NIP </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $dosen->nip }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> NIDP </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $dosen->nidn }}
								</p>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Gelar Depan </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $dosen->gelar_depan }}
								</p>
							</div>
						</div>		
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Gelar Belakang </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $dosen->gelar_belakang }}
								</p>
							</div>
						</div>						
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Tempat Lahir </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $dosen->tempat_lahir }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Tanggal Lahir </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $dosen->tanggal_lahir->todatestring() }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Jenis Kelamin </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $jenis_kelamin }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> No HP </label>
							<div class="col-md-9">
								<p class="col-form-label">
									{{ $dosen->nohp }}
								</p>
							</div>
						
						
					</form>
				</div>
			</div>
		</div>
	</div>

<div class="col-md-4">
    <div class="card">
       
        <div class="card-body" id="collapseExample">
            <div class="text-center">
            <img src="{{ route('get.image', ['profile-pict', $dosen->user->avatar]) }}" class="img-fluid img-thumbnail" />
            </div>
        </div>
    </div>
</div>


@endsection

@push('javascript')
<script type="text/javascript">
	function confirmDelete()
	{
		if(confirm('Anda yakin akan menghapus dosen ini?'))
		{
			form = document.querySelector('#form-delete');
			form.submit();
		}
	}
</script>
@endpush
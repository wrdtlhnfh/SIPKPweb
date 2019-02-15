 @extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
	
@endsection


{{-- Content Utama --}}
@section('content')
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				{!! Form::model($mahasiswa_kp, ['route' => ['storestatus.proposal', $mahasiswa_kp->id], 'method' => 'patch', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}
				
				<div class="card-header">
					<i class="fa fa-align-justify"></i> Status Permohonan KP
				</div>
				
				<div class="card-body">
					<div class="form-group">
				    
					    <label for="nama"> Nama</label>
					    {{ Form::text('nama', Auth::user()->biodata->nama, ['class' => 'form-control', 'disabled'=>true]) }}
					</div>
					<div class="form-group">
						<label for="nim"> NIM</label>
				   		 {{ Form::text('nim', Auth::user()->biodata->nim, ['class' => 'form-control','disabled'=>true]) }}
					</div>

					<div class="form-group">
						<label for="jenis_kelamin"> Status</label>
						{{ Form::select('status', array('1' => 'Diterima', '2' => 'Ditolak'), null,['class' => 'form-control']) }}
					</div>
					<div class="form-group">
						<label for="mulai_kp"> Tanggal Mulai</label>
						{{ Form::date('mulai_kp', (isset($mahasiwa_kp) && $mahasiswa_kp->mulai_kp ? $proposal->mulai_kp : date('d-m-Y')), ['class' => 'form-control']) }}
					</div>

					<div class="form-group">
						<label for="selesai_kp"> Tanggal Selesai</label>
						{{ Form::date('selesai_kp', (isset($mahasiwa_kp) && $mahasiswa_kp->selesai_kp ? $proposal->selesai_kp : date('d-m-Y')), ['class' => 'form-control']) }}
					</div>
					<div class="form-group">
    					<label for="tanda_terima">Surat Balasan</label>
    					{{ Form::file('surat_balasan', ['class' => 'form-control', 'required']) }}
					</div>

				</div>
			</div>
			 <div class="card-footer">
                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Simpan</button>
               
              
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
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
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Nama </label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{$mhs->mahasiswa_kp->nama}}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Nim </label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{$mhs->mahasiswa_kp->nim}}
								</p> 
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Instansi KP</label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{ $mhs->proposal->instansi['nama'] }}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Lokasi KP </label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{ $mhs->proposal->instansi['lokasi'] }}
									
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> file KP </label>
							<div class="col-md-9">
								<table>
					                    
						            <tr>
						            	<td>
						            	@if($mhs->lap_kegiatan)
											<a href="{{ url('file/'.$mhs->get_type_lap_kegiatan().'/'.$mhs->get_file_lap_kegiatan().'/lihat')}}">1. Laporan kegiatan </a>  
										@endif
										</td>
						            </tr>
						            <tr>
						            	<td>
						            		@if($mhs->tanda_terima_laporan)
											<a href="{{ url('file/'.$mhs->get_type_tanda_terima_laporan().'/'.$mhs->get_file_tanda_terima_laporan().'/lihat')}}">2.Tanda Terima Laporan</a>  
										@endif
						            	</td>
						            	
						            </tr>
						            <tr>
						            	<td>
						            		 @if($mhs->nilai_lapangan)
											<a href="{{ url('file/'.$mhs->get_type_nilai_lapangan().'/'.$mhs->get_file_nilai_lapangan().'/lihat')}}">3.Nilai Lapangan</a>  
										@endif
						            	</td>
									   
						            </tr>
						            <tr>
						            	<td>
						            		@if($mhs->sertifikat_kp)
											<a href="{{ url('file/'.$mhs->get_type_sertifikat_kp().'/'.$mhs->get_file_sertifikat_kp().'/lihat')}}">4.Sertifikat KP</a>  
										@endif
						            	</td>
								        
						            </tr>
						            <tr>
						            	<td>
						            		@if($mhs->daftar_hadir)
												<a href="{{ url('file/'.$mhs->get_type_daftar_hadir().'/'.$mhs->get_file_daftar_hadir().'/lihat')}}">5.Daftar hadir</a>  
											@endif
						            	</td>
						            </tr>
						            <tr>
						            	<td>
						            		@if($mhs->berita_acara)
												<a href="{{ url('file/'.$mhs->get_type_berita_acara().'/'.$mhs->get_file_berita_acara().'/lihat')}}">6.Berita Acara</a> 
											@endif
						            	</td>
						            </tr>
						            <tr>
						            	<td>
						            		@if($mhs->laporan_kp)
												<a href="{{ url('file/'.$mhs->get_type_laporan_kp().'/'.$mhs->get_file_laporan_kp().'/lihat')}}">7.Laporan KP</a>
											@endif
						            		
						            	</td>
						            </tr>
					                       
					                  
					                </table>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Catatan</label>
							<div class="col-md-9">
								<p class="col-form-label">
									: {{ $mhs->catatan_nilai}}
								</p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label"> Nilai KP </label>
							<div class="col-md-9">
								<p class="col-form-label">
									<form method="post" action={{url('update_nilai_kp')}} id="form-update">
										{{csrf_field()}}
										<input type="hidden" name="id_kp" value="{{$mhs->id}}">
										<select name="nilai" class="form form-control">
											<option value="A" {{$mhs->nilai_kp == 'A' ? 'selected' : ''}}>A</option>
											<option value="A-" {{$mhs->nilai_kp == 'A-' ? 'selected' : ''}}>A-</option>
											<option value="B+" {{$mhs->nilai_kp == 'B+' ? 'selected' : ''}}>B+</option>
											<option value="B" {{$mhs->nilai_kp == 'B' ? 'selected' : ''}}>B</option>
											<option value="B-" {{$mhs->nilai_kp == 'B-' ? 'selected' : ''}}>B-</option>
											<option value="C+" {{$mhs->nilai_kp == 'C+' ? 'selected' : ''}}>C+</option>
											<option value="C" {{$mhs->nilai_kp == 'C' ? 'selected' : ''}}>C</option>
											<option value="D" {{$mhs->nilai_kp == 'D' ? 'selected' : ''}}>D</option>
											<option value="E" {{$mhs->nilai_kp == 'E' ? 'selected' : ''}}>E</option>
										</select>
										<br>
										<button onclick = "event.preventDefault();confirmUpdate('{{ url('update_nilai_kp') }}')" name="btnSubmit" class="btn btn-info">Simpan</button>
									</form>
									
								</p>
							</div>
						</div>
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

	function confirmUpdate(url)
	{
		if(confirm('Apakah Nilai Sudah Benar?'))
		{
			form = document.querySelector('#form-update');
			form.action = url;
			form.submit();
		}
	}
</script>
@endpush
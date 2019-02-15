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
				<i class="fa fa-align-justify"></i> Form Kerja Praktek
			</div>

			<div class="card-body">
				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">Nama</th>
							<th class="text-center">Aksi</th>
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Template Proposal KP</td>
							<td><a href="{{asset('form_kp/Template_ProposalKP.docx')}}" download>Download</a></td>
						</tr>
						<tr>
							<td> Daftar Penilaian Lapangan</td>
							<td><a href="{{asset('form_kp/Daftar_Penilaian_Lapangan.docx')}}" download>Download</a></td>
						</tr>
						
							<td> Daftar Hadir Seminar KP</td>
							<td><a href="{{asset('form_kp/ Daftar_Hadir_Seminar_KP.docx')}}" download>Download</a></td>
						</tr>
						<tr>
							<td> Berita Acara Seminar KP</td>
							<td><a href="{{asset('form_kp/ Berita_Acara_Seminar_KP.docx')}}" download>Download</a></td>
						</tr>
						<tr>
							<td>Tanda Terima Laporan KP</td>
							<td><a href="{{asset('form_kp/tanda_terima_Laporan_KP')}}" download>Download</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="card-footer">
				
			</div>
		</div>
	</div>
</div>
@endsection
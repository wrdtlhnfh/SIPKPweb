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
				<i class="fa fa-align-justify"></i> Daftar Mahasiswa KP
			</div>

			<div class="card-body">
				<select name='status_kp' id='status_kp' class="form form-control" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
					<option value="{{url('mahasiswa_kp_bimbingan')}}">Semua</option>
					
					@foreach($status_kps as $status_kp)
						<option value="{{url('mahasiswa_kp_bimbingan/'.$status_kp->id)}}" {{$status == $status_kp->id ? 'selected' : ''}}>{{$status_kp->status_kp}}</option>
					@endforeach
				</select>

				<br>

				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">NIM</th>
							<th class="text-center">Nama</th>
							<th class="text-center">Instansi</th>
							<th class="text-center">Bidang</th>
							<th class="text-center">Judul Laporan</th>
							<th class="text-center">Mulai</th>
							<th class="text-center">Selesai</th>
							<th class="text-center">Status</th>
							
							@can('input_nilai')
							<th>Aksi</th>
							@endcan
						</tr>
					</thead>
					<tbody id='isi_tabel_proposal'>
						@php($no = 1)
						@foreach($mahasiswa_kps as $pro)
						<tr>
							<td> {{ $no++}} </td>
							<td> 
								<a href="{{url('detail_mahasiswa/'.$pro->mahasiswa_id)}}">
								@if(isset($pro->mahasiswa_kp))
								{{ $pro->mahasiswa_kp->nim }}
								@else
								{{App\Mahasiswa::find($pro->mahasiswa_id)->nim}}
								@endif
								</a> 
							</td>
							<td> 
							@if(isset($pro->mahasiswa_kp->nama))
								{{ $pro->mahasiswa_kp->nama}}
							@else
								{{App\Mahasiswa::find($pro->mahasiswa_id)->nama}}
							@endif
							</td>
							<td> 
							@if(isset($pro->proposal->instansi->nama))
								{{ $pro->proposal->instansi->nama}}
							@else
								{{App\Proposal::find($pro->proposal_id)->instansi->nama}}
							@endif

							</td>
							<td>{{$pro->bidang}}</td>
							<td>{{$pro->judul_laporan}}</td>
							<td>{{$pro->mulai_kp}}</td>
							<td>{{$pro->selesai_kp}}</td>
							<td>
							@if(isset($pro->statuskp->status_kp))
								{{$pro->statuskp->status_kp}}
							@else
								@php($stat = App\StatusKP::find($pro->status))
								@if($stat)
									{{$stat->status_kp}}
								@endif
							@endif
							</td>
							
							 

							 @can('input_nilai')
							 <td>

<!-- 							 if($pro->status == '7'&&$pro->nilai_kp == null)

						 		<a href="url('input_nilai/'.$pro->id)}}" class="btn btn-info">Nilai</a>
						 		 elseif($pro->nilai_kp =! null&&$pro->status == '7')
						 		<a href="url('input_nilai/'.$pro->id)}}" class="btn btn-info">Update Nilai</a>
						 		 elseif($pro->nilai_kp =! null&&$pro->status == '8')
						 		<a href="url('input_nilai/'.$pro->id)}}" class="btn btn-info">Update Nilai</a>

							 endif -->
							 
							 @if($pro->status == '7' && $pro->nilai_kp == null)
						 		<a href="{{url('input_nilai/'.$pro->id)}}" class="btn btn-info">Nilai</a>
							 @elseif($pro->status == '8' || $pro->status == '11' )
						 		<a href="{{url('input_nilai/'.$pro->id)}}" class="btn btn-info">Update Nilai</a>

							 @endif

							</td>
							@endcan
						 		<!-- <a href="{{url('detail_mahasiswa/'.$pro->id)}}" class="btn btn-info">Lihat</a> -->


							
							
						</tr>
						@endforeach
					</tbody>
				</table>
				
			</div>
			<div class="card-footer">
				{{ $mahasiswa_kps->links() }}
			</div>
			
	</div>
</div>

<form style="display: none" action="#" method="post" id="form-delete">
	@csrf
	@method('delete')
</form>


@endsection

@push('javascript')
<!-- 
<script type="text/javascript">
	var status_kp = document.getElementById('status_kp');
	status_kp.onchange = function(){
		var server = 'http://localhost:8000/';
		status_kp.onchange = function(){
			var status_id = document.getElementById('status_kp').value;
			// alert(server+"proposal_by_status/"+status_id);
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			       // Typical action to be performed when the document is ready:
			       var data = JSON.parse(xhttp.response);
			       
			       var isi_tabel_proposal = document.getElementById('isi_tabel_proposal');
			       isi_tabel_proposal.innerHTML = '';
			       	// console.log(data)

			       for(i = 0; i<data.length;i++){
			       	 var tr = document.createElement('tr');
			       	 var no = i+1;
			       	 tr.innerHTML = '<td>'+no+'</td><td>'+data[i].mahasiswa_id+'</td><td>'+data[i].mahasiswa_id+'</td><td>'+data[i].instansi+'</td><td>'+data[i].mulai_kp+'</td><td>'+data[i].selesai_kp+'</td><td>'+data[i].status+'</td>';
			       	 isi_tabel_proposal.appendChild(tr)
			       }
			    }
			};
			xhttp.open("GET", server+"kp_by_status/"+status_id, true);
			xhttp.send();
		}
	}
</script>
 -->
@endpush
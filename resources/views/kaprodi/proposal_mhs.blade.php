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
				<i class="fa fa-align-justify"></i> Daftar Proposal
			</div>

			<div class="card-body">
				<select name='status_proposal' id='status_proposal' class="form form-control" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
					<option value="semua" selected>Semua</option>
					
					@foreach($status_proposals as $status_proposal)
						<option value="{{url('proposalmhs/'.$status_proposal->id.'/status')}}">{{$status_proposal->status}}</option>
					@endforeach
				</select>

				<br>

				<table class="table table-responsive-sm table-bordered">
					<thead>
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Judul</th>
							<th class="text-center">Instansi</th>
							<th class="text-center">Status</th>
							<th class="text-center">Aksi</th>							
						</tr>
					</thead>
					<tbody id='isi_tabel_proposal'>
						@php($no = 1)
						@foreach($proposals as $pro)
						<tr>
							<td> {{ $no++}} </td>
							<td> {{ $pro->judul }} </td>
							<td> 
							@if(isset($pro->instansi->nama))
								{{$pro->instansi->nama }}
							@elseif(isset($pro->instansi_id))
								{{App\Instansi::find($pro->instansi_id)->nama}}
							@endif
							</td>
							<td>
							@if(isset($pro->status_p->status))
								{{$pro->status_p->status}}
							@elseif(isset($pro->status_proposal))
								{{App\StatusProposal::find($pro->status_proposal)->status}}
							@endif
							 
							  </td>
							
						
						
								<td class="text-center">
								
								<a href=" {{route('lihat.proposal', [$pro->id])}} " class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a>
							
							</td>
							
						</tr>
						@endforeach
					</tbody>
				</table>
				
			</div>
			<div class="card-footer" id="table_footer">
				{{ $proposals->links() }}
			</div>
	</div>
</div>

<form style="display: none" action="#" method="post" id="form-delete">
	@csrf
	@method('delete')
</form>


@endsection

@push('javascript')

<script type="text/javascript">
	// var status_proposal = document.getElementById('status_proposal');
	// status_proposal.onchange = function(){
	// 	var server = 'http://localhost:8000/';
	// 	status_proposal.onchange = function(){
	// 		var status_id = document.getElementById('status_proposal').value;
	// 		// alert(server+"proposal_by_status/"+status_id);
	// 		var xhttp = new XMLHttpRequest();
	// 		xhttp.onreadystatechange = function() {
	// 		    if (this.readyState == 4 && this.status == 200) {
	// 		       // Typical action to be performed when the document is ready:
	// 		       var data = JSON.parse(xhttp.response);
			       
	// 		       var isi_tabel_proposal = document.getElementById('isi_tabel_proposal');
	// 		       isi_tabel_proposal.innerHTML = '';
	// 		       	// console.log(data)

	// 		       	var value_status = "";
	// 		       for(i = 0; i<data.length;i++){
	// 		       	 var tr = document.createElement('tr');
	// 		       	 var no = i+1;
	// 		       	 tr.innerHTML = '<td>'+no+'</td><td>'+data[i].judul+'</td><td>'+data[i].instansi+'</td><td>'+data[i].status+'</td><td class="text-center"><a href="'+server+'proposalmhs/'+data[i].id+'" class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a></td>';
	// 		       	 isi_tabel_proposal.appendChild(tr)
	// 		       	 // value_status = data[i].link;
	// 		       }
	// 		       // console.log(value_status)
	// 		       document.getElementById('table_footer').innerHTML = '';

	// 		    }
	// 		};
	// 		xhttp.open("GET", server+"proposal_by_status/"+status_id, true);
	// 		xhttp.send();
	// 	}
	// }
</script>

@endpush
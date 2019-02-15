<!DOCTYPE html>
<html>
<head>
	<title>Daftar Mahasiswa KP {{$tahun}}</title>
	<style type="text/css">
		.headerTable {
			border: solid black 1px;
			border-collapse: collapse;
			font-weight: bold;
			vertical-align: middle;
			text-align: center;
			padding: 10px;
		}
		.bodyTable {
			border: solid black 1px;
			border-collapse: collapse;
			padding: 5px;
		}
	</style>
	<script type="text/javascript">
		function print_paper(){
			var css = '@page { size: landscape; }',
		    head = document.head || document.getElementsByTagName('head')[0],
		    style = document.createElement('style');

			style.type = 'text/css';
			style.media = 'print';

			if (style.styleSheet){
			  style.styleSheet.cssText = css;
			} else {
			  style.appendChild(document.createTextNode(css));
			}

			head.appendChild(style);

			window.print();
		}
	</script>
</head>
<body onload="print_paper()">
	<table border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td></td>
			<td colspan="5"><img src="{{asset('header.jpg')}}"></td>
			<td colspan="5"></td>
		</tr>
		<tr>
			<td colspan="11" style="text-align: center;border: solid black 1px">
				<h4 style="">DAFTAR MAHASISWA YANG MENDAFTAR KP TA. {{$tahun}} JURUSAN SISTEM INFORMASI</h4>
			</td>
		</tr>
		<tr>
			<td class="headerTable">NO</td>
			<td class="headerTable">Nama</td>
			<td class="headerTable">NIM</td>
			<td class="headerTable">Lokasi KP</td>
			<td class="headerTable">Instansi KP</td>
			<td class="headerTable">Bidang KP</td>
			<td class="headerTable">Pembimbing</td>
			<td class="headerTable">Mulai Tanggal</td>
			<td class="headerTable">Jadwal Seminar KP</td>
			<td class="headerTable">Nilai KP</td>
		</tr>
		@php($no = 1)
		@foreach($mahasiswa_kp as $mk)
		<tr>
			<td class="bodyTable"> {{ $no++}} </td>
			<td class="bodyTable"> {{ $mk->mahasiswa_kp->nama}} </td>
			<td class="bodyTable"> {{ $mk->mahasiswa_kp->nim}} </td>
			<td class="bodyTable"> {{ $mk->proposal->instansi->nama }} </td>
			<td class="bodyTable"> {{ $mk->proposal->instansi->lokasi }} </td>
			<td class="bodyTable"> {{ $mk->bidang}} </td>
			<td class="bodyTable">
				@if($mk->data_pembimbing) 
					{{ $mk->data_pembimbing->nama}}
				@endif
			 </td>
			<td class="bodyTable">
				@if($mk->mulai_kp)
			 		{{ $mk->mulai_kp }} - {{ $mk->selesai_kp }}
				@endif
	 		 </td>
			<td class="bodyTable"> 
				@if($mk->mulai_kp)
				{{ $mk->tanggal_seminar }} {{ $mk->jam_seminar }} 
				@endif
			</td>
			
			<td class="bodyTable">{{$mk->nilai_kp}}</td>
		</tr>
		@endforeach
	</table>
</body>
</html>
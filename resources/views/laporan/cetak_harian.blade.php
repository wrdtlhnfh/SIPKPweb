<!DOCTYPE html>
<html>
<head>
	<title>Kegiatan Harian</title>
</head>
<body onload="window.print()">
	<table border="0">
		<tr>
			<td colspan="4"><img src="{{asset('kp002.jpg')}}"></td>
		</tr>
		<tr>
			<td colspan="4" style="text-align: center" ><h2 style="text-decoration: underline;">Laporan Kegiatan Mahasiswa Kerja Praktek</h2></td>
		</tr>
		<tr>
			<td style="padding-left: 100px;padding-right: 20px;width: 10px;white-space: nowrap;">Instansi Kerja Praktek</td>
			<td>:</td>
			<td colspan="1">{{$mahasiswa_kp->proposal->instansi->nama}}</td>
		</tr>
		<tr>
			<td style="padding-left: 100px;padding-right: 20px;width: 10px;white-space: nowrap;">Nama Mahasiswa</td>
			<td>:</td>
			<td colspan="1">{{$mahasiswa->nama}}</td>
		</tr>
		<tr>
			<td style="padding-left: 100px;padding-right: 20px;width: 10px;white-space: nowrap;">Nim</td>
			<td>:</td>
			<td colspan="2">{{$mahasiswa->nim}}</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left: 100px;padding-top: 20px;padding-right: 50px">
				<table border="1" style="width: 100%">
					<thead>
						<th style="padding-top: 10px;padding-bottom: 10px;background-color:#C0C0C0">No</th>
						<th style="padding-top: 10px;padding-bottom: 10px;background-color:#C0C0C0">Kegiatan</th>
						<th style="padding-top: 10px;padding-bottom: 10px;background-color:#C0C0C0">Waktu</th>
						<th style="padding-top: 10px;padding-bottom: 10px;background-color:#C0C0C0">Pembimbing Lapangan</th>
					</thead>
					@php($no = 1)
					<tbody>
						@foreach($mahasiswa_kp->harian as $mh)
						<tr>
							<td>{{$no++}}</td>
							<td>{{$mh->kegiatan}}</td>
							<td>{{date("d-m-Y", strtotime($mh->hari_tanggal))}}</td>
							<td></td>
						</tr>
						@endforeach
					</tbody>
				</table>				
			</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td style="width:300px;padding-top: 25px">Padang, {{\Carbon\Carbon::now()->format("d-m-Y")}}</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td style="width:300px;padding-top: 10px">Diketahui</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td style="width:300px;">
				<br><br><br><br><br>
			</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td style="width:300px;text-decoration: underline;">
				(............................)
			</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left:100px;padding-top:10px;font-style: italic;font-size: 12px">*) Staf yang  ditugaskan oleh Instansi ybs.</td>
		</tr>
	</table>
		
</body>
</html>
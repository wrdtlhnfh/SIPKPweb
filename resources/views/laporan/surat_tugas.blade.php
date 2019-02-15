<!DOCTYPE html>
<html>
<head>
	<title>Surat Tugas</title>
</head>
<body onload="window.print()">
	<table border="0">
		<tr>
			<td colspan="4"><img src="{{asset('header.jpg')}}"></td>
		</tr>
		<tr>
			<td colspan="4" style="text-align: center;">
				<h2 style="text-decoration: underline;margin-bottom: 10px;">SURAT TUGAS</h2>
				No : .......................................
			</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left: 100px;padding-right: 100px;padding-top: 20px;line-height: 20px;">Ketua Jurusan Sistem Informasi  menugaskan kepada mahasiswa Jurusan Sistem Informasi berikut :</td>
		</tr>
		<tr>
			<td style="padding-left: 150px;padding-right:10px;padding-top: 20px;line-height: 20px;">Nama </td>
			<td style="padding-top: 20px;">:</td>
			<td style="padding-top: 20px;" colspan="2">{{$mk->mahasiswa_kp->nama}}</td>
		</tr>
		<tr>
			<td style="padding-left: 150px;padding-top: 5px">No BP. </td>
			<td style="padding-top: 5px">:</td>
			<td style="padding-top: 5px" colspan="2">{{$mk->mahasiswa_kp->nim}}</td>
		</tr>
		<tr>
			<td style="width: 25%;"></td>
			<td style="width: 5%;"></td>
			<td style="width: 35%"></td>
			<td style="width: 35%"></td>
		</tr>
		<tr>
			<td colspan="4" style="padding-top: 20px;padding-left: 100px;padding-right: 100px;line-height: 20px;">
				Untuk mengikuti Mata Kuliah Kerja Praktek yang dilaksanakan di {{$mk->proposal->instansi->nama}}.
			</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-top: 20px;padding-left: 100px;padding-right: 100px;line-height: 20px;">
				Surat Tugas ini berlaku mulai {{$mulai[2]}} {{$arrBulan[$mulai[1]]}} {{$mulai[0]}} – {{$selesai[2]}} {{$arrBulan[$selesai[1]]}} {{$selesai[0]}}.
			</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-top: 20px;padding-left: 100px;padding-right: 100px;line-height: 20px;">
				Demikian Surat Tugas ini dibuat untuk dapat dipergunakan sebagaimana mestinya.
			</td>
		</tr>

		<tr>
			<td colspan="3"></td>
			<td style="padding-top: 20px;line-height: 20px;">
				Padang, {{$arrSekarang[2]}} {{$arrBulan[$arrSekarang[1]]}} {{$arrSekarang[0]}}
				<br> Ketua
				<br>
				<br>
				<br>
				<br>Nama Ketua
				<br>Nip Ketua
			</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left: 100px">Tembusan</td>
		</tr>
		<tr>
			<td colspan="4" style="font-style: italic;padding-left: 120px;">1. Yang bersangkutan dilaksanakan</td>
		</tr>
		<tr>
			<td colspan="4" style="font-style: italic;padding-left: 120px;">2. Arsip</td>
		</tr>
	</table>
</body>
</html>
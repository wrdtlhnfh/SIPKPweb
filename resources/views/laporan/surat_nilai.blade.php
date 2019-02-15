<!DOCTYPE html>
<html>
<head>
	<title>Nilai Kerja Praktek</title>
</head>
<body onload="window.print()">
	<table border="0">
		<tr>
			<td colspan="4"><img src="{{asset('header.jpg')}}"></td>
		</tr>
		<tr>
			<td colspan="4" style="text-align: center;">
				<h4 style="margin-bottom: 10px;">NILAI AKHIR MATAKULIAH KERJA PRAKTEK</h4>
			</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left: 100px;padding-right: 100px;padding-top: 20px;line-height: 20px;">Yang bertanda tangan dibawah ini, Dosen Pembimbing Mata Kuliah Kerja Praktek bagi Mahasiswa</td>
		</tr>
		<tr>
			<td style="padding-left: 150px;padding-right:10px;padding-top: 20px;line-height: 20px;">Nama </td>
			<td style="padding-top: 20px;">:</td>
			<td style="padding-top: 20px;" colspan="2">{{$mk->mahasiswa_kp->nama}}</td>
		</tr>
		<tr>
			<td style="padding-left: 150px;padding-top: 5px">No NIM. </td>
			<td style="padding-top: 5px">:</td>
			<td style="padding-top: 5px" colspan="2">{{$mk->mahasiswa_kp->nim}}</td>
		</tr>
		<tr>
			<td style="padding-left: 150px;padding-top: 5px">Judul Laporan </td>
			<td style="padding-top: 5px">:</td>
			<td style="padding-top: 5px" colspan="2">{{$mk->judul_laporan}}</td>
		</tr>
		<tr>
			<td style="width: 40%;"></td>
			<td style="width: 5%;"></td>
			<td style="width: 20%"></td>
			<td style="width: 35%"></td>
		</tr>
		<tr>
			<td colspan="4" style="padding-top: 20px;padding-left: 100px;padding-right: 100px;line-height: 20px;text-align: justify;">
				Dengan      memperhatikan       penilaian      kerja      praktek      oleh      pembimbing       lapangan      di {{$mk->proposal->instansi->nama}} (Perusahaan  / instansi  ) dan laporan  serta hasil seminar kerja praktek yang telah dilaksanakan, maka mahasiswa yang bersangkutan  dinyatakan lulus/ tidak lulus mata kuliah Kerja Praktek dengan nilai : 

			</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-top: 20px;padding-left: 150px;padding-right: 150px;line-height: 20px;text-align: center;">
				<table border="0" style="width: 100%;text-align: center;">
					<td style="font-weight: bold;font-size: 25px">{{$mk->nilai_kp}}</td>
					
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-top: 20px;padding-left: 100px;padding-right: 100px;line-height: 20px;">
				Demikian pernyataan ini untuk digunakan sebagaimana mestinya.
			</td>
		</tr>

		<tr>
			<td colspan="2" style="padding-top: 20px;padding-left: 100px;line-height: 20px;">
				Mengetahui
				<br> Jurusan Sistem Informasi
				<br> Sekretaris
				<br>
				<br>
				<br>
				<br>Nama Sekretaris
				<br>Nip Sekretaris
			</td>
			<td></td>
			<td style="padding-top: 20px;line-height: 20px;">
				Padang, <br>{{$arrSekarang[2]}} {{$arrBulan[$arrSekarang[1]]}} {{$arrSekarang[0]}}
				<br> Pembimbing Kerja Praktek
				<br>
				<br>
				<br>
				<br style="text-decoration: underline;">{{$mk->dosbing->nip}}
				<br>{{$mk->dosbing->nama}}
			</td>
		</tr>
	</table>
</body>
</html>
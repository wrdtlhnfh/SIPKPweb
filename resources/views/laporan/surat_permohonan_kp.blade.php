<!DOCTYPE html>
<html>
<head>
	<title>Surat Permohonan KP</title>
</head>
<body onload="window.print()">
	<table border="0">
		<tr>
			<td colspan="4"><img src="{{asset('header.jpg')}}"></td>
		</tr>
		<tr>
			<td style="padding-left: 100px;">Nomor</td>
			<td>:</td>
			<td>
				...............................................
			</td>
			<td>Padang, {{$arrSekarang[2]}} {{$arrBulan[$arrSekarang[1]]}} {{$arrSekarang[0]}}</td>
		</tr>
		<tr>
			<td style="padding-left: 100px;">Lampiran</td>
			<td>:</td>
			<td>-</td>
			<td></td>
		</tr>
		<tr>
			<td style="padding-left: 100px;">Perihal</td>
			<td>:</td>
			<td style="font-weight: bold;text-decoration: underline;">Permohonan Kerja Praktek</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left: 100px;padding-right: 100px;padding-top: 20px;line-height: 20px;">
				Kepada, <br>
				Yth. Kepala {{$proposal->instansi->nama}}<br>
				di<br>
				&nbsp;&nbsp; Tempat
			</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left: 150px;padding-right:10px;padding-top: 20px;line-height: 20px;">
				Dengan Hormat
			</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left: 100px;padding-top: 20px;text-align: justify;padding-right: 50px;">
				Kerja Praktek merupakan salah satu mata kuliah wajib pada Jurusan Sistem Informasi Universitas Andalas. Tujuan mata kuliah ini adalah untuk memberikan wawasan dan melatih mahasiswa agar dapat mengenal dan memahami secara langsung aplikasi sistem informasi pada lapangan kerja., manajemen serta pengelolaan dalam bidang sistem informasi. Pelaksanaan Kerja Praktek ini dapat dilakukan di industri/perusahaan, lembaga penelitian swasta maupun pemerintah.<br>
				Peran serta instansi saudara dalam memberi tempat dan fasilitas untuk pelaksanaan Kerja Praktek bagi mahasiswa Jurusan Sistem Informasi akan sangat membantu dalam mempersiapkan sumber daya manusia yang siap pakai dalam bidang ilmu sistem informasi. Untuk itu, sudilah kiranya instansi/perusahaan Bapak/Ibu untuk dapat menyediakan fasilitas untuk pelaksanaan Kerja Praktek mahasiswa berikut ini :
			</td>
		</tr>
		</tr>
		<tr>
			<td colspan="4" style="padding-top: 10px;padding-left: 100px;padding-right: 50px;line-height: 20px;">
				@php($no=1)
				<table border="1" style="width:100%;">
					<th>NO</th>
					<th>Nama</th>
					<th>Nim</th>
					<th>Waktu</th>
				@foreach($proposal->mahasiswas as $mkp)
				<tr>
					<td>{{$no++}}</td>
					<td>{{$mkp->mahasiswa_kp->nama}}</td>
					<td>{{$mkp->mahasiswa_kp->nim}}</td>
					<td>{{$mulai[2]}} {{$arrBulan[$mulai[1]]}} - {{$selesai[2]}} {{$arrBulan[$selesai[1]]}} {{$selesai[0]}}</td>
				</tr>
				@endforeach
				</table>
			</td>
		</tr>
		<tr>
			<td style="width: 25%;"></td>
			<td style="width: 5%;"></td>
			<td style="width: 35%"></td>
			<td style="width: 35%"></td>
		<tr>
			<td colspan="4" style="padding-top: 20px;padding-left: 100px;padding-right: 100px;line-height: 20px;">
				Demikianlah surat permohonan ini dibuat. Atas perhatian dan tindak lanjutnya dari Bapak/Ibu diucapkan terima kasih.
			</td>
		</tr>

		<tr>
			<td colspan="3"></td>
			<td style="padding-top: 20px;line-height: 20px;">
				Ketua Jurusan
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
			<td colspan="4" style="font-style: italic;padding-left: 120px;">1. Arsip</td>
		</tr>
	</table>
</body>
</html>
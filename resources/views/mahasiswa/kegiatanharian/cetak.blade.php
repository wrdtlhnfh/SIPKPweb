<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body onload="window.print()">
    <!-- <link href="{{ asset('css/pace.css') }}" rel="stylesheet"> -->
                    
                    <h1>Kegiatan Harian {{$mhs->mahasiswa_kp->nama}}</h1>
                    <table class="table table-responsive-sm table-bordered">
                        <thead>
                            <tr>
                               
                                <th class="text-center">Hari/Tanggal</th>
                                <th class="text-center">Kegiatan</th>
                                <th class="text-center">Catatan</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($harian_mahasiswas as $harian_mahasiswas)
                            <tr>
                               
                                <td> {{ $harian_mahasiswas->hari_tanggal }} </td>
                                <td> {{ $harian_mahasiswas->kegiatan}} </td>
                                <td> {{ $harian_mahasiswas->catatan}} </td>
                                
                               
                            </tr>
                            @endforeach
                        </tbody>
                    </table>

      <script src="{{ asset('js/app.js') }}"></script>
      <!-- <script src="{{ asset('js/pace.min.js') }}"></script> -->

</body>
</html>



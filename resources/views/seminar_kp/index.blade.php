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
                <i class="fa fa-align-justify"></i> Daftar Kegiatan Harian
            </div>

            <div class="card-body">
                <table class="table table-responsive-sm table-bordered">
                    <thead>
                        <tr>
                           
                            <th class="text-center">ID</th>
                            <th class="text-center">Mahasiswa</th>
                            <th class="text-center">Judul Laporan</th>
                            <th class="text-center">Tanggal</th>
                            <th class="text-center">Jam</th>
                            <th class="text-center">Ruang</th>
                            <th class="text-center">Action</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($kp as $k)
                        <tr>
                           
                            <td> {{ $k->id }} </td>
                            <td> {{ $k->mhs->nama}} </td>
                            <td> {{ $k->judul_laporan}} </td>
                            <td> {{ $k->tanggal_seminar}} </td>
                            <td> {{ $k->jam_seminar}} </td>
                            <td> {{ $k->ruang_seminar}} </td>
                            <td class="text-center">
                                <a href=" {{url('berkas/'.$k->id.'/seminar')}} " class="btn btn-sm btn-outline-info"><i class="fa fa-eye"></i></a>
                            </td>
                            
                           
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                
            </div>
            <div class="card-footer">
                {{ $kp->links() }}
            </div>
        </div>
    </div>
</div>

<form style="display: none" action="#" method="post" id="form-delete">
    @csrf
    @method('delete')
</form>


@endsection

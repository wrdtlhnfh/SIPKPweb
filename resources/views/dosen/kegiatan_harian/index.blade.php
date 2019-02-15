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
              
                <i class="fa fa-align-justify"></i> Daftar Kegiatan Harian <a style="font-weight: bold;">{{ $mk->mahasiswa_kp->nama }} </a>

            <div class="card-body">
                <table class="table table-responsive-sm table-bordered">
                    <thead>
                        <tr>
                           
                            <th class="text-center">Hari/Tanggal</th>
                            <th class="text-center">Kegiatan</th>
                            <th class="text-center">Catatan</th>
                            @can('balas_catatan')
                            <th class="text-center">Action</th>
                            @endcan
                            @can('edit_harian')
                            <th class="text-center">Action</th>
                            @endcan
                            
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($harian_mahasiswas as $harian_mahasiswa)
                        <tr>
                           
                            <td> {{ $harian_mahasiswa->hari_tanggal }} </td>
                            <td> {{ $harian_mahasiswa->kegiatan}} </td>
                            <td> {{ $harian_mahasiswa->catatan}} </td>
                            @can('balas_catatan')
                            <td class="text-center">
                                <a href=" {{url('edit_balasan/'.$harian_mahasiswa->id)}} " class="btn btn-sm btn-outline-info"><i class="fa fa-pencil"></i></a>
                            </td>
                            @endcan
                            @can('edit_harian')
                            <td class="text-center">
                                <a href=" {{url('edit_harian/'.$harian_mahasiswa->id)}} " class="btn btn-sm btn-outline-info"><i class="fa fa-pencil"></i></a>
                            </td>
                            @endcan
                            
                           
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                
            </div>
            <div class="card-footer">
                {{ $harian_mahasiswas->links() }}
            </div>
        </div>
    </div>
</div>

<form style="display: none" action="#" method="post" id="form-delete">
    @csrf
    @method('delete')
</form>


@endsection

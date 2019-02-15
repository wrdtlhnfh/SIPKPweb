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
                <i class="fa fa-align-justify"></i> Upload Berkas KP
            </div>

            <div class="card-body">
                <table class="table table-responsive-sm table-bordered">
                    <thead>
                        <tr>
                           
                            <th class="text-center">Nama</th>
                            <th class="text-center">Berkas</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Laporan Kegiatan</td>
                            <td><a href="{{asset($kp->laporan_kp)}}" download>{{$kp->laporan_kp}}</a></td>                            
                        </tr>
                    </tbody>
                </table>
                
            </div>
            <div class="card-footer">
            </div>
        </div>
    </div>
</div>

<form style="display: none" action="#" method="post" id="form-delete">
    @csrf
    @method('delete')
</form>


@endsection

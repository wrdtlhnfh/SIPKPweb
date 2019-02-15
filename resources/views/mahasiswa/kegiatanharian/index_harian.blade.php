@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
    <a class="btn" href="{{ route('harian.cetak') }}"><i class="icon-plus"></i> Cetak</a>
@endsection

{{-- Content Utama --}}
@section('content')

<div class="row"> 
    <div class="col-md-12"> 
        <div class="card">
            @if(count($kp) > 0)
            
            {!! Form::open(['route' => 'harian.store', 'method' => 'post', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}

           <div class="card-header">
                <i class="fa fa-align-justify"> Kegiatan Harian </i>
            </div>

            <div class="card-body">

                @include('mahasiswa.kegiatanharian._form')
                
                
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Simpan</button>
                
            </div>

            {{ Form::close() }}
            @endif

        </div>
    </div>
    <div class="col-md-12">
        <div class="card" style="overflow-x: auto">
            <div class="card-header">
                <i class="fa fa-align-justify"></i> Daftar Kegiatan Harian
            </div>

            <div class="card-body">
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
                
            </div>
            <div class="card-footer">
                {{ $kegiatan_harians->links() }}
            </div>
        </div>
    </div>
</div>

<form style="display: none" action="#" method="post" id="form-delete">
    @csrf
    @method('delete')
</form>


@endsection

@push('javascript')
<script>
    function confirmDelete(url)
    {
        if(confirm('Anda yakin akan menghapus data kegiatan_harian ini?'))
        {
            form = document.querySelector('#form-delete');
            form.action = url;
            form.submit();
        }
    }
</script>

@endpush
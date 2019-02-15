@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
    <a class="btn" href="{{ url('harian_mahasiswa/'.$mhs_kp->id.'/cetak') }}"><i class="icon-plus"></i> Cetak</a>
@endsection

{{-- Content Utama --}}
@section('content')

<div class="row"> 
    <div class="col-md-12"> 
        <div class="card">
            @if(count($kp) > 0)
            
            {!! Form::open(['route' => 'harian.store', 'id'=>'confirm-create','method' => 'post', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}

           <div class="card-header">
                <i class="fa fa-align-justify"> Kegiatan Harian </i>
            </div>

            <div class="card-body">
                @include('mahasiswa.kegiatanharian._form')

                {{ Form::hidden('mhs_kp_id', $mhs_kp->id, ['class' => 'form-control']) }}
            </div>
            <div class="card-footer">
            <button onclick = "event.preventDefault();confirmSubmit('{{ route('harian.store') }}')" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Simpan</button>
                
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
                        @foreach($harian_mahasiswas as $harian_mahasiswa)
                        <tr>
                           
                            <td> {{ $harian_mahasiswa->hari_tanggal }} </td>
                            <td> {{ $harian_mahasiswa->kegiatan}} </td>
                            <td> {{ $harian_mahasiswa->catatan}} </td>
                            
                           
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

<form style="display: none" action="#" method="post" id="form-submit">
    @csrf
    @method('post')
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

    function confirmSubmit(url){
        if(confirm('Anda yakin Kegiatan Harian sudah benar?'))
        {
            form = document.querySelector('#confirm-create');
            form.action = url;
            form.submit();
        }   
    }
</script>



@endpush
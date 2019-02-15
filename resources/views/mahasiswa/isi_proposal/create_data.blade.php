@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
    <a class="btn" href="{{ route('proposal.index') }}"><i class="icon-list"></i> List </a>
@endsection

{{-- Content Utama --}}
@section('content')
<div class="row"> 
    <div class="col-md-12"> 
        <div class="card">

            {!! Form::open(['route' => 'registrasi.storedata', 'method' => 'post', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}

            <div class="card-header">
                <i class="fa fa-align-justify"> Isi Data KP </i>
            </div>

            <div class="card-body">

                @include('mahasiswa.isi_proposal._form_data')
                
            </div>

            <div class="card-footer">
                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Simpan</button>
                <button type="button" href="{{ route('tambah_anggota.add') }}" class="btn">Tambah Anggota</button>
            </div>

            {{ Form::close() }}

        </div>
    </div>
</div>
@endsection
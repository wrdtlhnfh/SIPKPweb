@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
    <a class="btn" href="{{ route('instansi.index') }}"><i class="icon-list"></i> List </a>
@endsection

{{-- Content Utama --}}
@section('content')
<div class="row"> 
    <div class="col-md-12"> 
        <div class="card">

            {!! Form::open(['route' => 'instansi.store', 'method' => 'post', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}

            <div class="card-header">
                <i class="fa fa-align-justify"> Tambah Instansi</i>
            </div>

            <div class="card-body">

                @include('admin.instansi._form')
                
            </div>

            <div class="card-footer">
                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Simpan</button>
                <button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-ban"></i> Reset</button>
            </div>

            {{ Form::close() }}

        </div>
    </div>
</div>
@endsection
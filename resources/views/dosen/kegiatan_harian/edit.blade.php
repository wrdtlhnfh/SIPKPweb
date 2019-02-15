@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
    
@endsection

{{-- Content Utama --}}
@section('content')
<div class="row"> 
    <div class="col-md-12"> 
        <div class="card">

            {!! Form::model($harian, ['route' => 'harian.update_balas', 'method' => 'patch', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}

            <div class="card-header">
                <i class="fa fa-align-justify"> Kegiatan Harian </i>
            </div>

            <div class="card-body">
                <div class="form-group">
                    <label for="hari_tanggal">Mahasiswa</label>
                    {{ Form::text('kegiatan', $harian->mhs_kp->mhs->nama, ['class' => 'form-control','readonly' => 'true']) }}
                    
                </div>

                @include('dosen.kegiatan_harian._form')
                
            </div>

            <div class="card-footer">
                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Simpan</button>
            </div>

            {{ Form::close() }}

        </div>
    </div>
</div>
@endsection
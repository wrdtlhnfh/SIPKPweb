@extends('blank')

@section('content')

<!--/.col-->
<div class="row">
    <div class="col-md-8">
        <form action="{{ route('profile.update') }}" method="post">
            
            @csrf
            @method('patch')
            
            <div class="card">
                <div class="card-header">
                    <strong>Ubah Data</strong>
                    Pengguna
                    <div class="card-header-actions">
                        <a href="{{ route('profile.show')}}" class="card-header-action btn-setting">
                            <i class="icon-user"></i>
                        </a>
                    </div>
                </div>
            <div class="card-body">
                
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">Nama</label>
                    <div class="col-md-9">
                        <input type="text" name="nama" class="form-control" value="{{ optional($user->biodata)->nama }}" placeholder="Nama Anda">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">Username</label>
                    <div class="col-md-9">
                        <p class="col-form-label">{{ $user->username }}</p>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">NIP</label>
                    <div class="col-md-9">
                        <p class="col-form-label">{{ optional($user->biodata)->nip}}</p>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">Email</label>
                    <div class="col-md-9">
                        <input type="text" name="email" class="form-control" value="{{ $user->email }}" placeholder="Nama Anda">
                    </div>
                </div>                    
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> Simpan</button>
                <button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-ban"></i> Reset</button>
            </div>
        </div>
    </form>
    
</div>

@include('profile.picture')

</div>
@endsection
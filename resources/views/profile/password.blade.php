@extends('blank')

@section('content')

<!--/.col-->
<div class="row">
    <div class="col-md-8">
        <form action="{{ route('password.store') }}" method="post">
            
            @csrf
            @method('patch')
            
            <div class="card">
                <div class="card-header">
                    <strong>Ubah Password</strong>
                    Pengguna
                    <div class="card-header-actions">
                    <a href="{{ route('profile.edit')}}" class="card-header-action btn-setting">
                        <i class="icon-pencil"></i>
                    </a>
                </div>
                </div>
                <div class="card-body">
                    
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Nama</label>
                        <div class="col-md-9">
                            <p class="col-form-label">{{ optional($user->biodata)->nama }}</p>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Username</label>
                        <div class="col-md-9">
                            <p class="col-form-label">{{ $user->username }}</p>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Email</label>
                        <div class="col-md-9">
                            <p class="col-form-label">{{ $user->email }}</p>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Password Lama</label>
                        <div class="col-md-9">
                            <input type="password" name="old_password" class="form-control" placeholder="Password Lama Anda">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Password Baru</label>
                        <div class="col-md-9">
                            <input type="password" name="new_password" class="form-control" placeholder="Password Baru">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Kofirmasi Password</label>
                        <div class="col-md-9">
                            <input type="password" name="confirm_password" class="form-control" placeholder="Konfirmasi Password Baru">
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
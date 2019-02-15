@extends('blank')

@section('content')

<!--/.col-->
<div class="row">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header">
                <strong>Profil</strong>
                Pengguna
                <div class="card-header-actions">
                    <a href="{{ route('profile.edit')}}" class="card-header-action btn-minimize">
                        <i class="icon-pencil"></i> 
                    </a>
                </div>
            </div>
            <div class="card-body">
                <form action="" method="post">
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
                        <label class="col-md-3 col-form-label">NIP</label>
                        <div class="col-md-9">
                            <p class="col-form-label">{{ optional($user->biodata)->nip}}</p>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Email</label>
                        <div class="col-md-9">
                            <p class="col-form-label">{{ $user->email }}</p>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Password</label>
                        <div class="col-md-9">
                            <p class="col-form-label">*******</p>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Tipe Pengguna</label>
                        <div class="col-md-9">
                            <p class="col-form-label">{{ $tipe[$user->type]}}</p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    @include('profile.picture')
    
</div>
@endsection
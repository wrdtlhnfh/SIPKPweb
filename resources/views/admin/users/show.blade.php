@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
    <a class="btn" href="{{ route('users.destroy', [ $user->id]) }}" onclick="event.preventDefault();confirmDeletion();"><i class="icon-trash"></i> Hapus</a>
    <a class="btn" href="{{ route('users.edit', [ $user->id]) }}"><i class="icon-pencil"></i> Edit</a>
    <a class="btn" href="{{ route('users.index') }}"><i class="icon-list"></i> List</a>

    <form style="display: none" action="{{ route('users.destroy', [$user->id]) }}" method="post" id="form-delete">
        @csrf
        @method('delete')
    </form>
@endsection

{{-- Content Utama --}}
@section('content')
<div class="row">
    <div class="col-md-12">
        
        <div class="card">
            <div class="card-header">
                <i class="fa fa-align-justify"></i> Informasi User
            </div>
            <div class="card-body">
                <form action="" method="post">
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
                        <label class="col-md-3 col-form-label">Passowrd</label>
                        <div class="col-md-9">
                            <p class="col-form-label">*******</p>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Role</label>
                        <div class="col-md-9">
                            @foreach($roles as $role)
                                <span class="badge badge-pills badge-primary">{{ $role }} </span>
                            @endforeach
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Profile Picture</label>
                        <div class="col-md-9 text-center">
                            <img src="public/img/avatars/{{ $user->avatar }}" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
    </div>
</div>
@endsection

@push('javascript')
<script>
    function confirmDeletion(){
        if(confirm('Anda yakin akan menghapus user ini?')){
            form = document.querySelector('form-delete');
            form.submit();
        }
    }
</script>
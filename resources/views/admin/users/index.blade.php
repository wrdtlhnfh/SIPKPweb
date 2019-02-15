@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
<a class="btn" href="{{ route('users.create') }}"><i class="icon-plus"></i> Tambah</a>
@endsection

{{-- Content Utama --}}
@section('content')

<div class="row">
    <div class="col-md-12">
        
        <div class="card">
            
            <div class="card-header">
                <i class="fa fa-align-justify"></i> Daftar User
            </div>
            
            <div class="card-body">
                <table class="table table-responsive-sm table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Username</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Status</th>
                            <th class="text-center">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($users as $user)
                        <tr>
                            <td>{{ $user->username }}</td>
                            <td>{{ $user->email }}</td>
                            
                            <td class="text-center">
                                @if($user->status == 1)
                                <a href="#" class="btn btn-sm btn-outline-primary" onclick="event.preventDefault();activation('{{ route('users.deactivate', [$user->id]) }}')">
                                    Aktif (NonAktifkan)
                                </a>
                                @else
                                <a href="#" class="btn btn-sm btn-outline-secondary" onclick="event.preventDefault();activation('{{ route('users.activate', [$user->id]) }}')">
                                    Nonaktif (Aktifkan)
                                </a>
                                @endif
                            </td>
                            
                            <td class="text-center">
                                <a href="{{ route('users.show', [$user->id]) }}" class="btn btn-sm btn-outline-primary">
                                    <i class="fa fa-eye"> </i>
                                </a>
                                <a href="{{ route('users.edit', [$user->id]) }}" class="btn btn-sm btn-outline-primary">
                                    <i class="fa fa-pencil"> </i>
                                </a>
                                <button onclick="event.preventDefault();confirmDeletion('{{ route('users.destroy', [$user->id]) }}');" class="btn btn-sm btn-outline-danger">
                                    <i class="fa fa-trash"> </i>
                                </button>
                                
                            </td>
                            
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            
        </div>
        
    </div>
</div>

<form style="display: none" action="#" method="post" id="form-delete">
    @csrf
    @method('delete')
</form>

<form style="display: none" action="#" method="post" id="form-activation">
    @csrf
</form>

@endsection

@push('javascript')
<script>
    function confirmDeletion(url){
        if(confirm('Anda yakin akan menghapus user ini? ')){
            form = document.querySelector('#form-delete');
            form.action = url;
            form.submit();
        }
    }
    
    function activation(url){
        form = document.querySelector('#form-activation');
        form.action = url;
        form.submit();
    }
</script>
@endpush


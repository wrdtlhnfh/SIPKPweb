@extends('blank')

{{-- Menu Breadcrumb --}}
@section('breadcrumb')
    
@endsection

{{-- Content Utama --}}
@section('content')

<div class="row"> 
    <div class="col-md-12"> 
        <div class="card">

            {!! Form::open(['route' => 'tambah_anggota.storedata', 'method' => 'post', 'files' => 'true', 'enctype' => 'multipart/form-data']) !!}

           <div class="card-header">
                <i class="fa fa-align-justify"> Tambah Anggota </i>
            </div>

            <div class="card-body">
                 <div class="col-md-10">

                <div class="form-group">
                    <label for="id"></label>
                    {{ Form::hidden('id', $proposal->id, ['class' => 'form-control'])}}
                <!-- {!! Form::input('hari_tanggal','start_date',date('Y-m-d'),['class' => 'form-control','disabled'=>true]) !!} -->
                </div>

               
                    <div class="form-group">
                        <div class="form-group row">
                            <label class="col-md-3 col-form-label"> Nama </label>
                            <div class="col-md-9">
                                <p class="col-form-label">
                                   {{ Form::select('mahasiswa', $mahasiswa, null, ['class' => 'form-control'])}}
                                </p>
                            </div>

                            <label class="col-md-3 col-form-label"> Bidang </label>
                            <div class="col-md-9">
                                <p class="col-form-label">
                                   {{ Form::text('bidang',  null, ['class' => 'form form-control'])}}
                                </p>
                            </div>
                     </div>
                    <div style="text-align: right;">
                      <button type="submit" class="btn btn btn-primary"><i class="fa fa-dot-circle-o"></i> Tambah</button>
                               
                 </div>           
                    
                </div>

               
                              
               
                
            </div>
          

            {{ Form::close() }}

        </div>
    </div>
    <div class="col-md-12">
        <div class="card" style="overflow-x: auto">
            <div class="card-header">
                <i class="fa fa-align-justify"></i> Daftar Anggota
            </div>

            <div class="card-body">
                <table class="table table-responsive-sm table-bordered">
                    <thead>
                        <tr>
                           
                            <th class="text-center">Nim</th>
                            <th class="text-center">Nama</th>
                            <th class="text-center">bidang</th>
                            <th class="text-center">Aksi</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                         @foreach($anggotas as $anggota)
                                             
                                            <tr>
                                                <td>{{ optional($anggota->mahasiswa_kp)->nim }} </td>
                                                <td>{{ optional($anggota->mahasiswa_kp)->nama }} </td>
                                                <td>{{ $anggota->bidang }} </td>
                                           

                            <td class="text-center">
                              
                                <button onclick = "event.preventDefault();confirmDelete('{{ route('tambah_anggota.hapus_anggota', [$anggota['id']]) }}');" class="btn btn-sm btn-outline-danger"><i class="fa fa-trash"></i></button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                
            </div>
            <div class="card-footer">
               
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
        if(confirm('Anda yakin akan anggota ini?'))
        {
            form = document.querySelector('#form-delete');
            form.action = url;
            form.submit();
        }
    }
</script>

@endpush
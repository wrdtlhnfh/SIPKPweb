@if(count($errors))

<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <ul>
        @foreach($errors->all() as $error)
        <li>{{$error}}</li>
        @endforeach
    </ul>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">×</span>
    </button>
</div>

@endif

@if(Session::has('toasts'))
	@foreach(Session::get('toasts') as $toast)
		<div class="alert alert-{{ $toast['level'] }} alert-dismissible fade show" role="alert" id="flash-message" >
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>

			@if(!is_null($toast['title']))
				<strong>{{ $toast['title'] }}</strong>
			@endif

			{{ $toast['message'] }}
		</div>
	@endforeach
@endif
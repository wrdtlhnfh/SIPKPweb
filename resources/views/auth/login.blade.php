<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Fjalla+One|Questrial" rel="stylesheet">
    <title>{{ config('app.name') }}</title>
    <!-- Main styles for this application-->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/pace.css') }}" rel="stylesheet">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style type="text/css">
        .bg-login{
            background-image: url('img/i.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            font-family: 'Questrial', sans-serif;
        }
    </style>
</head>
<body class="app flex-row align-items-center bg-login">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h1 class="text-center">SIPKP</h1>
                                
                 <p class="text-center">Sistem Informasi Pengelolaan Kerja Praktek</p>
                <div class="card-group" style="max-width:550px">
                    
                    <div class="card p-4">
                        <div class="card-body" style="padding-top: 0px;">
                            <center><p style="font-size:30px">Login</p></center>
                            <form method="POST" action="{{ route('login') }}">
                                @csrf
                                
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="icon-user"></i>
                                        </span>
                                    </div>
                                    <input id="username" type="text" class="form-control{{ $errors->has('username') ? ' is-invalid' : '' }}" name="username" value="{{ old('username') }}" placeholder="Username" required autofocus>
                                    
                                    @if ($errors->has('username'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('username') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="icon-lock"></i>
                                        </span>
                                    </div>
                                    <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="Password"  name="password" required>
                                    
                                    @if ($errors->has('password'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                
                                <div class="input-group mb-4">
                                    <div class="row">
                                        <div class="col-4">
                                            <div class="checkbox">
                                                <label class="switch switch-pill switch-primary">
                                                    <input type="checkbox" class="switch-input" name="remember" {{ old('remember') ? 'checked' : '' }} />
                                                    <span class="switch-slider"></span> 
                                                </div>
                                            </label>
                                        </div>
                                        <div class="col-8">
                                            <p class="text-muted">{{ __('Remember Me') }}</p>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-6">
                                        <button type="submit" class="btn btn-primary px-4">
                                            {{ __('Login') }}
                                        </button>
                                    </div>
                                    <div class="col-6 text-right">
                                        <a class="btn btn-link px-0" href="{{ route('password.request') }}">
                                            {{ __('Forgot Your Password?') }}
                                        </a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>
    
    <!-- Bootstrap and necessary plugins-->
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/pace.min.js') }}"></script>
</body>
</html>

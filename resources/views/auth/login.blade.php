<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Login</title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
    {{--
    <link rel="icon" href="../assets/img/icon.ico" type="image/x-icon" /> --}}
    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/atlantis.css')}}">
</head>

<body class="login">
    <div class="wrapper wrapper-login wrapper-login-full p-0">
        <div class="login-aside w-50 d-flex align-items-center justify-content-center bg-black left-box">
            <form action="{{route('login')}}" method="POST"> 
                @csrf
            <div class="container container-login container-transparent animated fadeIn">
                <h3 class="text-center text-login">User Login</h3>
                @if ($errors->any())
                    <p class="text-danger text-center">
                        <strong>{{ $errors->first() }}</strong>
                    </p>
                @endif
                <div class="login-form">
                    <div class="form-group">
                        <input id="username" name="email" autocomplete="off" value="{{old('email')}}" type="email" placeholder="Email" class="form-control"
                            required>
                    </div>
                    <div class="form-group">

                        <div class="position-relative">
                            <input id="password" name="password" autocomplete="off" type="password" placeholder="Password"
                                class="form-control" required>
                            <div class="show-password">
                                <i class="icon-eye"></i>
                            </div>
                        </div>
                    </div>

                    <div class="form-group text-center d-grid">
                        <a href="#" class="forgot-password">Lupa Password?</a>
                        <button submit class="btn btn-yellow button-pilih-formulir-dash">Masuk</button>
                    </div>
                </div>
            </div>
        </form>
        </div>
        <div class="login-aside w-50 d-flex flex-column align-items-center justify-content-center text-center bg-grey">
            <!-- <h1 class="title fw-bold text-white mb-3">Join Our Comunity</h1>  -->
            <img class="img-login" src="{{asset('assets/image/icon/esdm-icon.png')}}"
                alt="">
        </div>

    </div>
</body>

</html>
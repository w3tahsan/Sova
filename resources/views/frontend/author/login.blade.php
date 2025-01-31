@extends('frontend.master')

@section('content')
    <!--Login-->
    <section class="login">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-8 m-auto">
                    <div class="login-content">
                        <h4>Login</h4>
                        <p></p>
                        @if (session('pending'))
                            <div class="alert alert-danger">{{ session('pending') }}</div>
                        @endif
                        @if (session('verified'))
                            <div class="alert alert-success">{{ session('verified') }}</div>
                        @endif
                        @if (session('success'))
                            <div class="alert alert-success">{{ session('success') }}</div>
                        @endif
                        <form action="{{ route('author.login') }}" class="sign-form widget-form " method="POST">
                            @csrf
                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Email*" name="email"
                                    value="">
                                @if (session('exist'))
                                    <strong class="text-danger">{{ session('exist') }}</strong>
                                @endif
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password*" name="password"
                                    value="">
                                @if (session('pass_wrong'))
                                    <strong class="text-danger">{{ session('pass_wrong') }}</strong>
                                @endif
                            </div>
                            <div class="sign-controls form-group">
                                <a href="{{ route('pass.reset.req') }}" class="btn-link ">Forgot Password?</a>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn-custom">Login in</button>
                            </div>
                            <p class="form-group text-center">Don't have an account? <a
                                    href="{{ route('author.register.page') }}" class="btn-link">Create One</a> </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

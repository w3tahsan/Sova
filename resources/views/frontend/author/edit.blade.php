@extends('frontend.author.author_main')

@section('content')
<div class="row">
    <div class="col-lg-6">
        <div class="card">
            <div class="card-header">
                <h3>Edit Profile</h3>
            </div>
            <div class="card-body">
                @if (session('update'))
                    <div class="alert alert-success">{{ session('update') }}</div>
                @endif
                <form action="{{ route('author.update') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" value="{{ Auth::guard('author')->user()->name }}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" value="{{ Auth::guard('author')->user()->email }}">
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label">Photo</label>
                        <input type="file" name="photo" class="form-control" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])">
                        <div class="my-2">
                            <img src="{{ asset('uploads/author') }}/{{ Auth::guard('author')->user()->photo }}" id="blah" width="200" alt="">
                        </div>
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="card">
            <div class="card-header">
                <h3>Change Password</h3>
            </div>
            <div class="card-body">
                @if (session('pass_update'))
                    <div class="alert alert-success">{{ session('pass_update') }}</div>
                @endif
                <form action="{{ route('author.password.update') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label">Current Password</label>
                        <input type="password" name="current_password" class="form-control" >
                        @error('current_password')
                            <strong class="text-danger">{{ $message }}</strong>
                        @enderror
                        @if (session('err'))
                            <strong class="text-danger">{{ session('err') }}</strong>
                        @endif

                    </div>
                    <div class="mb-3">
                        <label class="form-label">New Password</label>
                        <input type="password" name="password" class="form-control">
                        @error('password')
                            <strong class="text-danger">{{ $message }}</strong>
                        @enderror

                    </div>
                    <div class="mb-3">
                        <label class="form-label">Confirm Password</label>
                        <input type="password" name="password_confirmation" class="form-control">
                        @error('password_confirmation')
                            <strong class="text-danger">{{ $message }}</strong>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Change Password</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

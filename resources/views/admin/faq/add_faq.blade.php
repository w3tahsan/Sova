@extends('layouts.admin')
@section('content')
    <div class="row">
        <div class="col-lg-8 m-auto">
            <div class="card">
                <div class="card-header">
                    <h3>Add New FAQ</h3>
                </div>
                <div class="card-body">
                    @if (session('success'))
                        <div class="alert alert-success">{{ session('success') }}</div>
                    @endif
                    <form action="{{ route('faq.store') }}" method="POST">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Question</label>
                            <input type="text" name="question" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Answer</label>
                            <input type="text" name="answer" class="form-control">
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary">Add FAQ</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

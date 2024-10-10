@extends('layouts.admin')
@section('content')
    <div class="row">
        <div class="col-lg-8 m-auto">
            <div class="card">
                <div class="card-header">
                    <h3>FAQ List</h3>
                </div>
                <div class="card-body">

                    <table class="table table-bordered">
                        <tr>
                            <th>SL</th>
                            <th>Question</th>
                            <th>Answer</th>
                            <th>Action</th>
                        </tr>
                        @foreach ($faqs as $index => $faq)
                            <tr>
                                <td>{{ $index + 1 }}</td>
                                <td>{{ $faq->question }}</td>
                                <td>{{ $faq->answer }}</td>
                                <td class="d-flex">
                                    <a href="{{ route('faq.show', $faq->id) }}" class="btn btn-info">view</a>
                                    <a href="{{ route('faq.edit', $faq->id) }}" class="btn btn-success mx-1">Edit</a>
                                    <form action="{{ route('faq.destroy', $faq->id) }}" method="POST">
                                        @method('DELETE')
                                        @csrf
                                        <button type="submit" class="btn btn-danger">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection

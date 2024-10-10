@extends('layouts.admin')
@section('content')
    <div class="row">
        <div class="col-lg-8 m-auto">
            <div class="card">
                <div class="card-header">
                    <h3>View Faq</h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <td>Question</td>
                            <td>{{ $faq->question }}</td>
                        </tr>
                        <tr>
                            <td>Answer</td>
                            <td>{{ $faq->answer }}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection

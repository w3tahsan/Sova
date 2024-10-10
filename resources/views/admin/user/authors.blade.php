@extends('layouts.admin')
@section('content')
    @can('author')
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h3>Authors List</h3>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <tr>
                                <th>SL</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Photo</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            @foreach ($authors as $index => $author)
                                <tr>
                                    <td>{{ $index + 1 }}</td>
                                    <td>{{ $author->name }}</td>
                                    <td>{{ $author->email }}</td>
                                    <td>
                                        @if ($author->photo != null)
                                            ache
                                        @else
                                            <img src="https://via.placeholder.com/30x30" width="50" alt="profile">
                                        @endif
                                    </td>
                                    <td>
                                        <span
                                            class="badge badge-{{ $author->status == 1 ? 'success' : 'secondary' }}">{{ $author->status == 1 ? 'Approved' : 'Not Approved' }}</span>
                                    </td>
                                    <td>
                                        <a class="btn btn-{{ $author->status == 1 ? 'success' : 'secondary' }}"
                                            href="{{ route('author.status', $author->id) }}">Change Status</a>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    @else
        <h3>You dont have acces to this page</h3>
    @endcan
@endsection

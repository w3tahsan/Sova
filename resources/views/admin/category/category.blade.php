@extends('layouts.admin')
@section('content')
<div class="row">
    @can('@endcan')
    <div class="col-lg-8">
        <div class="card">
            <div class="card-header">
                <h3>Categories List</h3>
            </div>
            <div class="card-body">
                <form action="{{ route('category.check.delete') }}" method="POST">
                    @csrf
                <table class="table table-striped">
                    <tr>
                        <th width="50">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input id="chkSelectAll" type="checkbox" class="form-check-input">
                                    Check
                                <i class="input-frame"></i></label>
                            </div>
                        </th>
                        <th>SL</th>
                        <th>Category</th>
                        <th>Image</th>
                        <th>Action</th>
                    </tr>
                    @foreach ($categories as $index=>$category)
                    <tr>
                        <td>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" name="category_id[]" value="{{ $category->id }}" class="form-check-input chkDel" >
                                <i class="input-frame"></i></label>
                            </div>
                        </td>
                        <td>{{ $index+1 }}</td>
                        <td>{{ $category->category_name }}</td>
                        <td><img src="{{ asset('uploads/category') }}/{{ $category->category_image }}" width="100" alt=""></td>
                        <td>
                            <a title="Delete Category" href="{{ route('category.edit', $category->id) }}" class="btn btn-info btn-icon">
                                <i data-feather="edit"></i>
                            </a>
                            <a title="Delete Category" href="{{ route('category.delete', $category->id) }}" class="btn btn-danger btn-icon">
                                <i data-feather="trash"></i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </table>
                <div class="my-2">
                    <button id="del_btn" type="submit" class="btn btn-danger d-none">Delete Checked</button>
                </div>
                </form>
            </div>
        </div>
    </div>
    @endcan
    @can('category_add')
    <div class="col-lg-4">
        <div class="card">
            <div class="card-header">
                <h3>Add New Category</h3>
            </div>
            <div class="card-body">
                <form action="{{ route('category.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label">Category Name</label>
                        <input type="text" name="category_name" class="form-control">
                        @error('category_name')
                            <strong class="text-danger">{{ $message }}</strong>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Category Image</label>
                        <input type="file" name="category_image" class="form-control" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])">
                        @error('category_image')
                            <strong class="text-danger">{{ $message }}</strong>
                        @enderror
                        <div class="my-2">
                            <img src="" id="blah" width="200" alt="">
                        </div>
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Add Category</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    @endcan
</div>
@endsection

@section('footer_script')
@if (session('cat_added'))
    <script>
        Swal.fire({
        position: "center",
        icon: "success",
        title: "{{ session('cat_added') }}",
        showConfirmButton: false,
        timer: 1500
        });
    </script>
@endif
@if (session('del'))
    <script>
        Swal.fire({
        position: "center",
        icon: "success",
        title: "{{ session('del') }}",
        showConfirmButton: false,
        timer: 1500
        });
    </script>
@endif
<script>
    $("#chkSelectAll").on('click', function(){
        this.checked ? $(".chkDel").prop("checked",true) : $(".chkDel").prop("checked",false);
        $('#del_btn').toggleClass('d-none');
    })
    $(".chkDel").on('click', function(){
        $('#del_btn').removeClass('d-none');
    })
</script>
@endsection


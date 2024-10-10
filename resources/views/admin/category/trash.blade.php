@extends('layouts.admin')
@section('content')
@can('trash_category')
<div class="row">
    <div class="col-lg-8 m-auto">
        <div class="card">
            <div class="card-header">
                <h3>Trash Category List</h3>
            </div>
            <div class="card-body">
                <form action="{{ route('category.check.restore') }}" method="POST">
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
                    @foreach ($categories as $index=>$trash)
                    <tr>
                        <td>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" name="category_id[]" value="{{ $trash->id }}" class="form-check-input chkDel" >
                                <i class="input-frame"></i></label>
                            </div>
                        </td>
                        <td>{{ $index+1 }}</td>
                        <td>{{ $trash->category_name }}</td>
                        <td><img src="{{ asset('uploads/category') }}/{{ $trash->category_image }}" width="100" alt=""></td>
                        <td>
                            <a href="{{ route('category.restore', $trash->id) }}" title="Restore" class="btn btn-primary btn-icon">
                                <i data-feather="rotate-cw"></i>
                            </a>
                            <a data-link="{{ route('category.hard.delete', $trash->id) }}"  title="Delete" class="btn btn-danger btn-icon del">
                                <i data-feather="trash"></i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </table>
                <div class="my-2">
                    <button id="del_btn" name="action_btn" value="1" type="submit" class="btn btn-success d-none">Restore Checked</button>
                    <button id="del_btn2" name="action_btn" value="2" type="submit" class="btn btn-danger d-none">Delete Checked</button>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>
@endcan
@endsection

@section('footer_script')
@if (session('restore'))
    <script>
        Swal.fire({
        position: "center",
        icon: "success",
        title: "{{ session('restore') }}",
        showConfirmButton: false,
        timer: 1500
        });
    </script>
@endif
<script>
    $('.del').click(function(){
        Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!"
        }).then((result) => {
        if (result.isConfirmed) {
            var link = $(this).attr('data-link');
            window.location.href=link
        }
        });
    })
</script>
<script>
    $("#chkSelectAll").on('click', function(){
        this.checked ? $(".chkDel").prop("checked",true) : $(".chkDel").prop("checked",false);
        $('#del_btn').toggleClass('d-none');
        $('#del_btn2').toggleClass('d-none');
    })
    $(".chkDel").on('click', function(){
        $('#del_btn').removeClass('d-none');
        $('#del_btn2').removeClass('d-none');
    })
</script>
@endsection

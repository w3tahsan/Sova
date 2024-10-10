@extends('frontend.author.author_main')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h3>Add Neww Post</h3>
            </div>
            <div class="card-body">
                @if (session('success'))
                    <div class="alert alert-success">{{ session('success') }}</div>
                @endif
                <form action="{{ route('post.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="mb-3">
                                <label  class="for-label">Category</label>
                                <select name="category_id" class="form-control">
                                    <option value="">Select Category</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="mb-3">
                                <label  class="for-label">Read Time</label>
                                <input type="number" name="read_time" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="mb-3">
                                <label class="form-label">Title</label>
                                <input type="text" name="title" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="mb-3">
                                <label class="form-label">Description</label>
                                <textarea id="summernote" name="desp" class="form-control" rows="10"></textarea>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="mb-3">
                                <label for="">Select tag</label>
                                <select id="select-gear" name="tag_id[]" class="demo-default" multiple placeholder="Select gear...">
                                    <option value="">Select gear...</option>
                                    <optgroup label="Climbing">
                                        @foreach ($tags as $tag)
                                            <option value="{{ $tag->id }}">{{ $tag->tag_name }}</option>
                                        @endforeach
                                    </optgroup>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Upload Thumbnail</label>
                                <input type="file" class="form-control" name="thumbnail">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label">Upload Preview</label>
                                <input type="file" class="form-control" name="preview">
                            </div>
                        </div>
                        <div class="col-lg-2 m-auto">
                            <div class="mt-5">
                                <button type="submit" class="btn btn-primary form-control">Add Post</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection



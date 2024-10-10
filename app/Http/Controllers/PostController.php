<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use Illuminate\Support\Str;

class PostController extends Controller
{
    function add_post(){
        $categories = Category::all();
        $tags = Tag::all();
        return view('frontend.post.add_post', [
            'categories'=>$categories,
            'tags'=>$tags,
        ]);
    }
    function post_store(Request $request){

        //thumbnail
        $thumbnail = $request->thumbnail;
        $extension = $thumbnail->extension();
        $thumbnail_name = uniqid().'.'.$extension;
        $manager = new ImageManager(new Driver());
        $image = $manager->read($thumbnail);
        $image->scale(width: 300);
        $image->save(public_path('uploads/post/thumbnail/'.$thumbnail_name));
        //Preview
        $preview = $request->preview;
        $extension = $preview->extension();
        $preview_name = uniqid().'.'.$extension;
        $manager = new ImageManager(new Driver());
        $image = $manager->read($preview);
        $image->scale(width: 1000);
        $image->save(public_path('uploads/post/preview/'.$preview_name));

        Post::insert([
            'author_id'=>Auth::guard('author')->id(),
            'category_id'=>$request->category_id,
            'read_time'=>$request->read_time,
            'title'=>$request->title,
            'slug'=>Str::lower(str_replace(' ', '-', $request->title)).'-'.random_int(10000,  300000),
            'desp'=>$request->desp,
            'tags'=>implode(',', $request->tag_id),
            'thumbnail'=>$thumbnail_name,
            'preview'=>$preview_name,
            'created_at'=>Carbon::now(),
        ]);

        return back()->with('success', 'New Post Added Successfully');
    }
    function my_post(){
        $posts = Post::where('author_id', Auth::guard('author')->id())->get();
        return view('frontend.post.my_post', [
            'posts'=>$posts,
        ]);
    }
    function my_post_del($post_id){
        $post = Post::find($post_id);

        $delete_from = public_path('uploads/post/thumbnail/'.$post->thumbnail);
        unlink($delete_from);

        $delete_from2 = public_path('uploads/post/preview/'.$post->preview);
        unlink($delete_from2);


        Post::find($post_id)->delete();
        return back();
    }
}

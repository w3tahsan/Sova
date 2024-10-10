<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Category;
use App\Models\comment;
use App\Models\Popular;
use App\Models\Post;
use App\Models\Tag;
use Carbon\Carbon;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    function welcome()
    {
        $categories = Category::all();
        $tags = Tag::all();
        $posts = Post::where('status', 1)->paginate(2);
        $slider_post = Post::where('status', 1)->latest()->take(3)->get();
        $popular_posts = Popular::where('total', '>', 10)->get();
        return view('frontend.index', [
            'categories' => $categories,
            'tags' => $tags,
            'posts' => $posts,
            'slider_post' => $slider_post,
            'popular_posts' => $popular_posts,
        ]);
    }
    function author_login_page()
    {
        return view('frontend.author.login');
    }
    function author_register_page()
    {
        return view('frontend.author.register');
    }

    function post_details($slug)
    {
        $post = Post::where('slug', $slug)->first();

        if (Popular::where('post_id', $post->id)->exists()) {
            Popular::where('post_id', $post->id)->increment('total', 1);
        } else {
            Popular::insert([
                'post_id' => $post->id,
                'total' => 1,
            ]);
        }

        $comments = comment::with('replies')->where('post_id', $post->id)->whereNull('parent_id')->get();
        $total_comments = comment::where('post_id', $post->id)->count();

        return view('frontend.post_details', [
            'post' => $post,
            'comments' => $comments,
            'total_comments' => $total_comments,
        ]);
    }
    function author_post($author_id)
    {
        $author = Author::find($author_id);
        $posts = Post::where('author_id', $author_id)->paginate(1);
        return view('frontend.author_post', [
            'author' => $author,
            'posts' => $posts,
        ]);
    }
    function category_post($category_id)
    {
        $category = Category::find($category_id);
        $posts = Post::where('category_id', $category_id)->paginate(1);
        return view('frontend.category_post', [
            'category' => $category,
            'posts' => $posts,
        ]);
    }

    function search(Request $request)
    {
        $data = $request->all();
        $search_posts = Post::where(function ($q) use ($data) {
            if (!empty($data['keyword']) && $data['keyword'] != '' && $data['keyword'] != 'undefinded') {
                $q->where(function ($q) use ($data) {
                    $q->where('title', 'like', '%' . $data['keyword'] . '%');
                });
            }
        })->paginate(2);
        $categories = Category::all();
        $popular_posts = Popular::where('total', '>', 10)->get();
        $tags = Tag::all();

        return view('frontend.search', [
            'search_posts' => $search_posts,
            'categories' => $categories,
            'popular_posts' => $popular_posts,
            'tags' => $tags,
        ]);
    }
    function tag_post($tag_id)
    {
        $tags = Tag::find($tag_id);
        $all = '';
        foreach (Post::all() as $post) {
            $after_explode = explode(',', $post->tags);
            if (in_array($tag_id, $after_explode)) {
                $all .= $post->id . ',';
            }
        }

        $after_explode2 = explode(',', $all);
        $tag_posts = Post::find($after_explode2);




        return view('frontend.tag_post', [
            'tags' => $tags,
            'tag_posts' => $tag_posts,
        ]);
    }

    function comments_store(Request $request, $author_id)
    {
        comment::insert([
            'author_id' => $author_id,
            'post_id' => $request->post_id,
            'message' => $request->message,
            'parent_id' => $request->parent_id,
            'created_at' => Carbon::now(),
        ]);
        return back();
    }
    function author_list()
    {
        $authors = Author::where('status', 1)->paginate(4);
        return view('frontend.author_list', [
            'authors' => $authors,
        ]);
    }
}

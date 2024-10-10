<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use Carbon\Carbon;
use Illuminate\Http\Request;

class TagController extends Controller
{
    function tag(){
        $tags = Tag::all();
        return view('admin.tag.tag', [
            'tags'=>$tags,
        ]);
    }
    function tag_store(Request $request){
        Tag::insert([
            'tag_name'=>$request->tag_name,
            'created_at'=>Carbon::now(),
        ]);

        return back()->with('success', 'Tag added successfully');
    }
    function tag_del($tag_id){
        Tag::find($tag_id)->delete();
        return back();
    }
}

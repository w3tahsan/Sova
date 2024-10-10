<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class CategoryController extends Controller
{
    function category(){
        $categories = Category::all();
        return view('admin.category.category', compact('categories'));
    }
    function category_store(Request $request){
        $request->validate([
            'category_name'=>['required'],
            'category_image'=>['required', 'mimes:png,jpg', 'max:1024'],
        ]);


        $cat_img = $request->category_image;
        $extension = $cat_img->extension();
        $file_name = uniqid().'.'.$extension;

        $manager = new ImageManager(new Driver());
        $image = $manager->read($cat_img);
        $image->scale(width: 300);
        $image->save(public_path('uploads/category/'.$file_name));

        Category::insert([
            'category_name'=>$request->category_name,
            'category_image'=>$file_name,
            'created_at'=>Carbon::now(),
        ]);

        return back()->with('cat_added', 'New Category Added');

    }

    function category_delete($category_id){
        Category::find($category_id)->delete();
        return back()->with('del', 'Category Moved to trash Successfully');
    }
    function category_trash(){
        $categories = Category::onlyTrashed()->get();
        return view('admin.category.trash', compact('categories'));
    }
    function category_restore($category_id){
        Category::onlyTrashed()->find($category_id)->restore();
        return back()->with('restore', 'Category Restored Successfully');
    }
    function category_hard_del($category_id){
        $category = Category::onlyTrashed()->find($category_id);
        $delete_from = public_path('uploads/category/'.$category->category_image);
        unlink($delete_from);

        Category::onlyTrashed()->find($category_id)->forceDelete();
        return back()->with('restore', 'Category Deleted Permanantly Successfully');
    }

    function category_edit($category_id){
        $category = Category::find($category_id);
        return view('admin.category.edit', [
            'category'=>$category,
        ]);
    }

    function category_update(Request $request, $category_id){
        $category = Category::find($category_id);
        if($request->category_image != null){

            $request->validate([
                'category_name'=>['required'],
                'category_image'=>['required', 'mimes:png,jpg', 'max:1024'],
            ]);

            $delete_from = public_path('uploads/category/'.$category->category_image);
            unlink($delete_from);


            $cat_img = $request->category_image;
            $extension = $cat_img->extension();
            $file_name = uniqid().'.'.$extension;

            $manager = new ImageManager(new Driver());
            $image = $manager->read($cat_img);
            $image->scale(width: 300);
            $image->save(public_path('uploads/category/'.$file_name));

            Category::find($category_id)->update([
                'category_name'=>$request->category_name,
                'category_image'=>$file_name,
            ]);
            return redirect()->route('category')->with('restore', 'Category Updated Successfully');

        }
        else{
            Category::find($category_id)->update([
                'category_name'=>$request->category_name,
            ]);
            return redirect()->route('category')->with('restore', 'Category Updated Successfully');
        }

    }
    function category_check_delete(Request $request){
        foreach($request->category_id as $cat_id){
            Category::find($cat_id)->delete();
        }
        return back()->with('del', 'Categories Moved to trash Successfully');
    }
    function category_check_restore(Request $request){

       if($request->action_btn == 1){
            foreach($request->category_id as $cat_id){
                Category::onlyTrashed()->find($cat_id)->restore();
            }
            return back()->with('restore', 'Category Restored Successfully');
       }
       else{
            echo 'delete koro';
       }

    }
}

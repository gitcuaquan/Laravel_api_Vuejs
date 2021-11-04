<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Topic;
use App\Models\Upload;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    public function getpost($status)
    {
        if ($status == "all") {
            $post = Post::all();
            return response()->json($post, 200);
        }
        if ($status == "show") {
            $post = Post::where("active", 1)->get();
            return response()->json($post, 200);
        }
        if ($status == "hide") {
            $post = Post::where("active", 0)->get();
            return response()->json($post, 200);
        }
        $post  = Post::find($status);
        return response()->json($post);
    }
    public function add(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'content' => 'required',
            'thumbnail' => 'required',
        ]);
        $t  = time();
        $post = new Post();
        $post->title = $request->title;
        $post->content = $request->content;
        $post->thumbnail = $request->thumbnail;
        $post->author = Auth::user()->name;
        $post->time = date("d-m-Y", $t);
        $post->toppic = $request->topic;
        $post->active = $request->status;
        $post->save();
        return response()->json(['msg' => "tạo bài viết thành công"], 200);
    }
    public function addtopic(Request $request)
    {
        $t  = time();
        $request->validate([
            'topic' => 'required',
        ]);
        $topic = new Topic();
        $topic->topic = $request->topic;
        $topic->author = Auth::user()->name;
        $topic->time = date("d-m-Y", $t);
        $topic->save();

        return response()->json(['msg' => 'thêm Chủ đề thành công'], 200);
    }
    public function getTopic()
    {
        $topic = Topic::all();
        return response()->json($topic);
    }
    public function deleteTopic($id)
    {
        if (Topic::destroy($id)) {
            Post::where('toppic', $id)->delete();
            return response()->json(['msg' => 'Xóa Chủ Đề Thành Công'], 200);
        }
    }
    public function setPost($status, $id)
    {
        if ($status == "active" && $id == "all") {
            Post::where("active", "0")->update(['active' => '1']);
            return response()->json(['msg' => 'Thay Đổi Thành Công'], 200);
        }
        if ($status == "unactive" && $id == "all") {
            Post::where("active", "1")->update(['active' => '0']);
            return response()->json(['msg' => 'Thay Đổi Thành Công'], 200);
        }
        if ($status == "active" && $id != "all") {
            $post = Post::find($id);
            $post->active = '1';
            $post->save();
            return response()->json(['msg' => 'Thay Đổi Thành Công'], 200);
        }
        if ($status == "unactive" && $id != "all") {
            $post = Post::find($id);
            $post->active = '0';
            $post->save();
            return response()->json(['msg' => 'Thay Đổi Thành Công'], 200);
        }
    }
    public function updatePost(Request $request, $id)
    {
        $post = Post::find($id);
        $post->content = $request->content;
        $post->active = $request->status;
        $post->toppic = $request->topic;
        $post->title = $request->title;
        if ($post->thumbnail != $request->thumbnail) {
            Upload::where('url',$post->thumbnail)->delete();
            unlink($post->thumbnail);
            $post->thumbnail = $request->thumbnail;
        }
        $post->save();
        return response()->json(['msg' => 'Thay Đổi Thành Công'], 200);
    }
    public function deletePost($id)
    {
           $post =  Post::find($id);
           Upload::where('url',$post->thumbnail)->delete();
           unlink($post->thumbnail);
           Post::destroy($id);
           return response()->json(['msg' => 'Thay Đổi Thành Công'], 200);
           
    }
}

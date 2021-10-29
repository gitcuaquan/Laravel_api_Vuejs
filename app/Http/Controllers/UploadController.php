<?php

namespace App\Http\Controllers;

use App\Models\Upload;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;

class UploadController extends Controller
{
    public function upload(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:jpg,jpeg,png,gif|max:10000'
         ]);
 
         $fileUpload = new Upload;
 
         if($request->file()) {

             $file_name = time().'_'.$request->file->getClientOriginalName();
             $file_path = $request->file('file')->move('uploads', $file_name);
 
             $fileUpload->img_name = time().'_'.$request->file->getClientOriginalName();
             $fileUpload->url = 'uploads/' . $file_name;
             $fileUpload->save();
 
             return response()->json(['success'=>'File uploaded successfully.','path'=>$fileUpload->url]);
         }

    }
    public function uploadLogo(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:jpg,jpeg,png,gif|max:10000'
         ]);
         $fileUpload = new Upload;
         if($request->file()) {
            $logo = DB::table('uploads')->where("url",'like','%logo%')->first();
            if (!empty($logo)) {  
               unlink($logo->url);
               DB::table('uploads')->where("url",'like','%logo%')->delete();
          }
            $file_name = 'logo'.'_'.time().'_'.$request->file->getClientOriginalName().'.png';
            $request->file('file')->move('uploads', $file_name);
             $fileUpload->img_name = 'logo'.'_'.time().'_'.$request->file->getClientOriginalName().'.png';
             $fileUpload->url = 'uploads/' . $file_name;
             $fileUpload->save();
             return response()->json(['success'=>'File uploaded successfully.','path'=>$fileUpload->url]);
         }

    }
    public function uploadBanner(Request $request)
    {
        $banner = DB::table('uploads')->where("url",'like','%banner%')->orderByDesc('id')->get();
        if (count($banner) >= 5) {
            return response()->json(['msd'=>'Tới Giới Hạn Hoạt Động Của 5 Banner'],400);
        }else {
            $request->validate([
                'file' => 'required|mimes:jpg,jpeg,png,gif|max:10000'
             ]);
             $fileUpload = new Upload;
             if($request->file()) {
                $file_name = 'banner'.'_'.time().'_'.$request->file->getClientOriginalName().'.jpg';
                $request->file('file')->move('uploads', $file_name);
                 $fileUpload->img_name = 'banner'.'_'.time().'_'.$request->file->getClientOriginalName().'.png';
                 $fileUpload->url = 'uploads/' . $file_name;
                 $fileUpload->save();
                 return response()->json(['success'=>'File uploaded successfully.','path'=>$fileUpload->url]);
             }
        }

    }
    public function getLogo()
    {
       $logo = DB::table('uploads')->where("url",'like','%logo%')->first();
      if (!empty($logo)) {  
            return $logo->url;
      }else {
          return response()->json(['msg'=>'logo not found'],400);
      }
    }
    public function getBanner()
    {
       $banner = DB::table('uploads')->where("url",'like','%banner%')->orderByDesc('id')->get();
        return response()->json($banner);
    }

public function deleteBanner($id)
{
    $banner = Upload::where('id',$id)->first();
    unlink($banner->url);
    Upload::where('id',$id)->delete();
    return  response()->json(['msg'=>"Xóa Thành Công"]);
}









}

<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    function index(){
        $products= Product::all();
        return response()->json($products); 
    }
    public function action($status,$id)
    {
        if($status=='stop'){
            $product= Product::find($id);
            $product->status = '0';
            $product->save();
            return $product->status ;
        }
        if($status=='start'){
            $product= Product::find($id);
            $product->status = '1';
            $product->save();
            return $product->status;
        }
    }
    public function filter($status)
    {
        if($status=='active'){
            $product= Product::where('status','1')->get();
            return $product;
        }
        if($status=='unactive'){
            $product= Product::where('status','0')->get();
            return $product;
        }
    }
    public function active($status)
    {
        if($status=='disable'){
            Product::where('status','1')->update(['status'=>0]);
            return response()->json(['msg'=>'Đã Dừng Bán Toàn Bộ Sản Phẩm']);
        }
        if($status=='enable'){
            Product::where('status','0')->update(['status'=>1]);
            return response()->json(['msg'=>'Đã MởBán Toàn Bộ Sản Phẩm']);
        }
    }
}

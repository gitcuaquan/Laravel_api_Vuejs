<?php

namespace App\Http\Controllers;

use App\Models\Bill;
use Illuminate\Http\Request;

class BillController extends Controller
{
    public function addBill(Request $request)
    {   
        $t = time();
        $request->validate([
            'name' => 'required|min:2',
            'email' => 'required|email',
            'phone' => 'required|min:9',
            'address' => 'required:min:5',
            'totalVl' => 'required',
            'numOderVl' => 'required',
            'detailCart' => 'required'
        ]);
        $code = time().rand(1111,9999);
        Bill::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'total' => $request->totalVl,
            'numOder' => $request->numOderVl,
            'detailbill' => $request->detailCart,
            'time'=>date("d-m-Y", $t),
            'code'=>$code
        ]);
        return  response()->json(['msg'=>"success",'code'=>$code],200);
    }
}

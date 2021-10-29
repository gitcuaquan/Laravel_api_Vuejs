<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddStaffRequest;
use App\Models\Staff;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class StaffController extends Controller
{
    function index()
    {
        $admin = User::where('admin', "!=", 0)->get();
        return response()->json($admin);
    }
    public function add(AddStaffRequest $res)
    {
        $val = $res->validated();
        $val['password'] = Hash::make($val['password']);
        $val['admin'] = 1;
        $user =   User::create($val);
        if ($user !== null) {
            return response()->json(['status' => 200]);
        }
    }
    public function delete($id)
    {
        $user =  User::where('id', $id)->get();
        if ($user[0]->avatar != '' || $user[0]->avatar != null) {
            unlink($user[0]->avatar);
        }
        User::destroy($id);
        return response()->json(['msg' => 'Xóa Thành Công']);
    }
    function getstaff($id)
    {
        return  User::where('id', $id)->get();
    }
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $val = $request->all();

        if ($val['avatar'] != $user->avatar) {
            unlink($user->avatar);
        }
        $user->name= $val['name'];
        $user->email= $val['email'];
        $user->admin= $val['admin'];
        $user->phone= $val['phone'];
        $user->address= $val['address'];
        $user->avatar = $val['avatar'];
        if($user->save()){
            return response()->json(['msg'=>'Cập Nhật Thành Công','status'=>200],);
        }
    }
}

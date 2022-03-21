<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Users;
class UsersController extends Controller
{
    public function index(){
        $sa = DB::table('users')->get();
        return view('superadmin.sa',['sa'=>$sa]);
    }
   

public function edit($id)
    {
        $sa = DB::table('users')->get();
        $users = DB::table('users')->where('id',$id)->first();
        return view('superadmin.sa',['edit'=>$users,'sa' => $sa]);
    }
public function update(Request $req){
        $name = $req->input('name');
        $email = $req->input('email');
        $role = $req->input('role');
        $level = $req->input('level');
        $update = DB::table('users')->where('email', $email)->update(['name' => $name, 'email' => $email, 'role' => $role, 'level' => $level]);
         return redirect('/sa');
    }
}


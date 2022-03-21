<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Superadmin;
class SuperadminController extends Controller
{
    public function index()
    {
        $superadmin = DB::table('users');
        switch($superadmin) {
            case '':
                # code...
                break;
            
            default:
                # code...
                break;
        }
        $users = DB::table('users')->get();
        return view('superadmin.index', ['users' => $users]);
    }
   public function tampildata(){
        $barangbaru = DB::table('barang')->orderbydesc('tanggal');
        return redirect()->route('superadmin.index');
   }
}

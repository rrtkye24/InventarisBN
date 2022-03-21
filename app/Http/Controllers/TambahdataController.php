<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TambahController extends Controller
{
    public function kelompokalat(){
        $alat = DB::table('barang')
        ->join('klmpk_alat', 'barang.klmpk_alat', '=', 'klmpk_alat.klmpk_alat')
        ->get();
        return view('/select',['alat' => $alat]);
    }
}

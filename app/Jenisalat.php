<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
class Jenisalat extends Model
{
    use HasFactory;
    protected $table = 'jenis_klmpk_alat';
    protected $fillable = [
        'klmpk_alat', 'kode_brg', 'jk_alat'
    ];
    
}

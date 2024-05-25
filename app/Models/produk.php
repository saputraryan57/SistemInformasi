<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class produk extends Model
{
    use HasFactory;
    protected $table = 'tabel_produk';
    protected $primaryKey = 'id_produk';
    protected $guarded = ['id_produk'];
}
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class pemasok extends Model
{
    use HasFactory;
    protected $table = 'tabel_pemasok';
    protected $primaryKey = 'id_pemasok';
    protected $guarded = ['id_pemasok'];
}

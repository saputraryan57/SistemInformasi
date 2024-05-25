<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class transaksipembelian extends Model
{
    use HasFactory;
    protected $table = 'tabel_transaksi_pembelian';
    protected $primaryKey = 'id_transaksi_pembelian';
    protected $guarded = ['id_transaksi_pembelian'];
    public function pemasok(){
        return $this->belongsTo(pemasok::class,'id_pemasok');
    }
}

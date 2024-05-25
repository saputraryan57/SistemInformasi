<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class detailtransaksi extends Model
{
    use HasFactory;
    protected $table = 'tabel_detail_transaksi_pembelian';
    protected $primaryKey = 'id_detail_transaksi_pembelian';
    protected $guarded = ['id_detail_transaksi_pembelian'];

    public function transaksipembelian(){
        return $this->belongsTo(transaksipembelian::class,'id_transaksi_pembelian');
    }
    public function produk(){
        return $this->belongsTo(produk::class,'id_produk');
    }
    public function user(){
        return $this->belongsTo(user::class,'id_user');
    }
}
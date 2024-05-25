<?php

namespace App\Http\Controllers;

use App\Models\produk;
use App\Models\transaksipembelian;
use PDF;
use App\Models\detailtransaksi;
use App\Models\user;
use Illuminate\Http\Request;
use Dompdf\Dompdf;

class detailtransaksiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $detailtransaksi = detailtransaksi::with(['transaksipembelian','produk','user'])->get();
        return view('detailtransaksi.index',compact('detailtransaksi'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $transaksi = transaksipembelian::all();
        $produk = produk::all();
        $user = user::all();

        return view('detailtransaksi.create', compact('transaksi','produk','user'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request -> validate([
            'id_transaksi_pembelian'=>'required',
            'id_produk'=>'required',
            'jumlah'=>'required',
            'harga_satuan'=>'required',
            'id_user'=>'required',
        ]);

        $dt = new detailtransaksi;
        $dt->id_transaksi_pembelian= $request->id_transaksi_pembelian;
        $dt->id_produk = $request->id_produk;
        $dt->jumlah= $request->jumlah;
        $dt->harga_satuan= $request->harga_satuan;
        $dt->id_user= $request->id_user;
        $dt->save();

        return to_route('detailtransaksi.index')->with('success','Data Berhasil di tambah.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id_detail_transaksi_pembelian)
    {
        $detail = detailtransaksi::find($id_detail_transaksi_pembelian);
        $transaksi = transaksipembelian::all();
        $produk = produk::all();
        $user = user::all();

        return view('detailtransaksi.edit', compact('detail','transaksi','produk','user'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_detail_transaksi_pembelian)
    {
        $request -> validate([
            'id_transaksi_pembelian'=>'required',
            'id_produk'=>'required',
            'jumlah'=>'required',
            'harga_satuan'=>'required',
            'id_user'=>'required',
        ]);

        $dt = detailtransaksi::find($id_detail_transaksi_pembelian);
        $dt->id_transaksi_pembelian= $request->id_transaksi_pembelian;
        $dt->id_produk= $request->id_produk;
        $dt->jumlah= $request->jumlah;
        $dt->harga_satuan= $request->harga_satuan;
        $dt->id_user = $request->id_user;
        $dt->save();

        return redirect()-> route('detailtransaksi.index')->with('success','Data Berhasil di tambah.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id_detail_transaksi_pembelian)
    {
        $detail = detailtransaksi::find($id_detail_transaksi_pembelian);
        $detail->delete();

        return back()->with('success','data berhasil dihapus');
    }
    public function transaksidownloadPdf(){
        $detailtransaksi = detailtransaksi::all();
        $pdf = PDF::loadView('detailtransaksi.laporan',['transaksi'=>$detailtransaksi])->setOptions(['defaultFont' => 'sans-serif']);
        return $pdf->download('laporan-transaksi.pdf');
    }
}
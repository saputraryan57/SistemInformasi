<?php

namespace App\Http\Controllers;

use App\Models\pemasok;
use App\Models\transaksipembelian;
use Illuminate\Http\Request;
use PDF;

class transaksipembelianController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('transaksipembelian.index')->with([
            'transaksipembelian'=> transaksipembelian::all(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $pemasok = pemasok::all();
        return view('transaksipembelian.create', compact('pemasok'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request -> validate([
            'id_transaksi_pembayaran'=>'required',
            'id_pemasok'=>'required',
            'total'=>'required',
            'status_pembayaran'=>'required',
        ]);

        $tp = new transaksipembelian;
        $tp->id_transaksi_pembelian = $request->id_transaksi_pembayaran;
        $tp->id_pemasok= $request->id_pemasok;
        $tp->total_pembelian = $request->total;
        $tp->status_pembayaran= $request->status_pembayaran;
        $tp->save();

        return to_route('transaksipembelian.index')->with('success','Data Berhasil di tambah.');
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
    public function edit(string $id_transaksi_pembelian)
    {
        return view('transaksipembelian.edit')->with([
            'transaksipembelian'=> transaksipembelian::find($id_transaksi_pembelian),
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_transaksi_pembelian)
    {
        $request -> validate([
            'total_pembelian'=>'required',
            'status_pembayaran'=>'required',
        ]);

        $tp = transaksipembelian::find($id_transaksi_pembelian);
        $tp->total_pembelian= $request->total_pembelian;
        $tp->status_pembayaran = $request->status_pembayaran;
        $tp->save();

        return redirect()-> route('transaksipembelian.index')->with('success','Data Berhasil di tambah.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id_transaksi_pembelian)
    {
        $transaksipembelian = transaksipembelian::find($id_transaksi_pembelian);
        $transaksipembelian->delete();

        return back()->with('seccess','data berhasil dihapus');
    }
}

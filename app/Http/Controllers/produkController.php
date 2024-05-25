<?php

namespace App\Http\Controllers;
use PDF;
use App\Models\produk;
use Illuminate\Http\Request;

class produkController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $produk = Produk::with([])->get();
        return view('produk.index',compact('produk'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $produk = Produk::all();
        return view('produk.create', compact('produk'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request -> validate([
            'nama_produk'=>'required',
            'merk'=>'required',
            'jenis_kelamin'=>'required',
            'ukuran'=>'required',
            'warna'=>'required',
            'harga_beli'=>'required',
            'harga_jual'=>'required',
            'stok'=>'required',
        ]);

        $prdk = new produk;
        $prdk->nama_produk= $request->nama_produk;
        $prdk->merk = $request->merk;
        $prdk->jenis_kelamin= $request->jenis_kelamin;
        $prdk->ukuran= $request->ukuran;
        $prdk->warna= $request->warna;
        $prdk->harga_beli= $request->harga_beli;
        $prdk->harga_jual= $request->harga_jual;
        $prdk->stok= $request->stok;
        $prdk->save();

        return redirect()-> route('produk.index')->with('success','Data Berhasil di tambah.');
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
    public function edit(string $id_produk)
    {
        return view('produk.edit')->with([
            'produk'=> produk::find($id_produk),
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_produk)
    {
        $request -> validate([
            'nama_produk'=>'required',
            'merk'=>'required',
            'jenis_kelamin'=>'required',
            'ukuran'=>'required',
            'warna'=>'required',
            'harga_beli'=>'required',
            'harga_jual'=>'required',
            'stok'=>'required',
        ]);

        $prdk = produk::find($id_produk);
        $prdk->nama_produk= $request->nama_produk;
        $prdk->merk = $request->merk;
        $prdk->jenis_kelamin= $request->jenis_kelamin;
        $prdk->ukuran= $request->ukuran;
        $prdk->warna= $request->warna;
        $prdk->harga_beli= $request->harga_beli;
        $prdk->harga_jual= $request->harga_jual;
        $prdk->stok= $request->stok;
        $prdk->save();

        return redirect()-> route('produk.index')->with('success','Data Berhasil di tambah.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id_produk)
    {
        $produk = produk::find($id_produk);
        $produk->delete();

        return back()->with('success','data berhasil dihapus');
    }
    public function ProdukdownloadPdf(){
        $produk = produk::all();
        $pdf = PDF::loadView('produk.laporan',['produk'=>$produk])->setOptions(['defaultFont' => 'sans-serif']);
        return $pdf->download('laporan-produk.pdf');
    }
}

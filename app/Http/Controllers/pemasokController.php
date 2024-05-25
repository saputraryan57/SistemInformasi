<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\pemasok;
use Illuminate\Http\Request;

class pemasokController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('pemasok.index')->with([
            'pemasok'=> pemasok::all(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pemasok.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request -> validate([
            'nama_pemasok'=>'required',
            'alamat'=>'required',
            'nomor_telepon'=>'required',
            'email'=>'required',
        ]);

        $pmsk = new pemasok;
        $pmsk->nama_pemasok= $request->nama_pemasok;
        $pmsk->alamat = $request->alamat;
        $pmsk->nomor_telepon= $request->nomor_telepon;
        $pmsk->email= $request->email;
        $pmsk->save();

        return to_route('pemasok.index')->with('success','Data Berhasil di tambah.');
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
    public function edit(string $id_pemasok)
    {
        return view('pemasok.edit')->with([
            'pemasok'=> pemasok::find($id_pemasok),
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_pemasok)
    {
        $request -> validate([
            'nama_pemasok'=>'required',
            'alamat'=>'required',
            'nomor_telepon'=>'required',
            'email'=>'required',
        ]);

        $pmsk = pemasok::find($id_pemasok);
        $pmsk->nama_pemasok= $request->nama_pemasok;
        $pmsk->alamat = $request->alamat;
        $pmsk->nomor_telepon= $request->nomor_telepon;
        $pmsk->email= $request->email;
        $pmsk->save();

        return redirect()-> route('pemasok.index')->with('success','Data Berhasil di tambah.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id_pemasok)
    {
        $produk = pemasok::find($id_pemasok);
        $produk->delete();

        return back()->with('seccess','data berhasil dihapus');
    }
    public function PemasokdownloadPdf(){
        $pemasok = pemasok::all();
        $pdf = PDF::loadView('pemasok.laporan',['pemasok'=>$pemasok])->setOptions(['defaultFont' => 'sans-serif']);
        return $pdf->download('laporan-pemasok.pdf');
    }
}

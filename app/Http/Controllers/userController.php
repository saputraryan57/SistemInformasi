<?php

namespace App\Http\Controllers;

use App\Models\user;
use Illuminate\Http\Request;

class userController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('user.index')->with([
            'user'=> user::all(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('user.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request -> validate([
            'id_user'=>'required|min:3',
            'nama_user'=>'required|min:3',
            'username'=>'required|min:3',
            'password'=>'required|min:3',
            'jabatan_user'=>'required|min:3',
        ]);

        $user = new user;
        $user->id_user = $request->id_user;
        $user->nama_user= $request->nama_user;
        $user->username = $request->username;
        $user->password= $request->password;
        $user->jabatan_user= $request->jabatan_user;
        $user->save();

        return to_route('user.index')->with('success','Data Berhasil di tambah.');
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
    public function edit(string $id_user)
    {
        return view('user.edit')->with([
            'user'=> user::find($id_user),
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_user)
    {
        $request -> validate([
            'nama_user'=>'required',
            'username'=>'required',
            'password'=>'required',
        ]);

        $user = user::find($id_user);
        $user->nama_user= $request->nama_user;
        $user->username = $request->username;
        $user->password = $request->password;
        $user->save();

        return redirect()-> route('user.index')->with('success','Data Berhasil di tambah.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id_user)
    {
        $user = user::find($id_user);
        $user->delete();

        return back()->with('seccess','data berhasil dihapus');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index(){
        $users=User::all();
        return view('user',compact('users'));
    }

    public function softDelete($id){
        User::find($id)->delete();
        return back();
    }

    public function trashed(){
        $users = User::onlyTrashed()->get();
        return view('trashed',compact('users'));
    }

    public function restore($id){
        User::whereId($id)->restore();
        return back();
    }

    public function restoreAll(){
        User::onlyTrashed()->restore();
        return back();
    }

    public function forceDelete($id){
        User::find($id)->forceDelete();
        return back();
    }
}

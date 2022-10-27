<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class AdminCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(!auth()->check() || auth()->user()->username !== 'willisianturi') {
            abort(403);
        }

        return view('dashboard.categories.index', [
            'categories' => Category::all()
        ]);
    }
}
<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

class AdminController extends Controller
{
    private $paginate = 2;
    private $recentpost_limit = 2;
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return View
     */
    public function index()
    {
        $page = "adminHome";
        return view('admin/index',[
            "page"  => $page
        ]);
    }

    public function login()
    {
        die("ADMIN HERE!");
    }

    
}
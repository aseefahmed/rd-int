<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Color;

class ColorsController extends Controller
{
    public function index()
    {
        $data['colors'] = DB::table('colors')->select('colors.*')->get();
        $data['yarn_types'] = DB::table('yarn_types')->get();
        return view('buying.colors', $data);
    }

    public function getColorsList()
    {
        $data['colors'] = DB::table('colors')->get();
        return $data;
    }

    public function updateColor(Request $request)
    {
        $color = Color::find($request->color_id);
        $color->update($request->all());
    }

    public function getColorDetails($id)
    {
        $data['color'] = DB::table('colors')->where('id', $id)->get();
        $data['yarn_types'] = DB::table('yarn_types')->get();

        return view('buying.color_details', $data);
    }
    public function storeColor(Request $request)
    {
        $color_id = time();
        $color = new Color();
        $color->id = $color_id;
        $color->color = $request->color_name;
        $color->save();

        return $color_id;
    }
}

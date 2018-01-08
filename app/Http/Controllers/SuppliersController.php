<?php

namespace App\Http\Controllers;

use App\Supplier;
use App\User;
use Illuminate\Http\Request;

class SuppliersController extends Controller
{
    public function viewSuppliersList()
    {
        $data['suppliers'] = Supplier::all();
        return view('production.suppliers', $data);
    }

    public function getSupplierDetails($id)
    {
        $data['suppliers'] = Supplier::where('id', $id)->get();
        $data['merchandisers'] = User::where('emp_role', 10)->where('flag', 1)->get();
        return view('production.supplier_details', $data);
    }

    public function updateSupplier(Request $request)
    {
        $supplier = Supplier::find($request->id);
        $supplier->update($request->all());

    }

    public function storeSupplier(Request $request)
    {
        Supplier::insert($request->all());
    }

    public function getsuppliersList()
    {
        $data['suppliers'] = Supplier::all();
        return $data;
    }
}

<?php

namespace App\Http\Controllers;

use App\Buyer;
use Illuminate\Http\Request;

class BuyersController extends Controller
{
    public function viewBuyersList()
    {
        $data['buyers'] = Buyer::all();
        return view('production.buyers', $data);
    }

    public function getBuyerDetails($id)
    {
        $data['buyers'] = Buyer::where('id', $id)->get();
        return view('production.buyer_details', $data);
    }

    public function updateBuyer(Request $request)
    {
        $buyer = Buyer::find($request->id);
        $buyer->update($request->all());
    }

    public function storeBuyer(Request $request)
    {
        Buyer::insert($request->all());
    }

    public function getbuyersList()
    {
        $data['buyers'] = Buyer::all();
        return $data;
    }
}

<?php
use App\User;
use App\BuyingOrder;
use App\Calendar;
use App\Activity;

function getMerchandiserDetails($id)
{
    $data['info'] = DB::table('users')->join('employees', 'employees.id', '=', 'users.id')->where('users.id', $id)->select('users.*', 'employees.mob as phone', 'employees.photo')->get();
    $data['total_orders'] = BuyingOrder::where('merchandiser_id', $id)->count();
    $data['orders'] = DB::table('buying_orders')->leftJoin('buyers', 'buyers.id', '=', 'buying_orders.customer')->where('merchandiser_id', $id)->select('buying_orders.*', 'buyers.buyer_name')->get();
    return $data;
}

function getOrderSizes($order_id){
    $sizes = DB::table('buying_order_sizes')->where('order_id', $order_id)->get();
    return $sizes = $sizes[0]->size."-".$sizes[count($sizes)-1]->size;
}

function getCompositionLabel($id){
    return DB::table('yarn_details')->where('id', $id)->get();
}

function getColorDetails($id){
    return DB::table('colors')->where('id', $id)->get();
    
}

function getColorQuantity($color_code, $order_size_id, $order_id){
    return DB::table('buying_colors_quantities')->where('color_id', $color_code)->where('order_sizes_id', $order_size_id)->where('order_id', $order_id)->get();
}

function yarnCodes($code){
    return DB::table("yarn_details")->where('yarn_code', $code)->get();
}
function getYarnDetails($id){
    return DB::table('yarns')->where('id', $id)->get();
}

function getOrderActivities($id)
{
    $data['activities'] = Calendar::where('user_id', $id)->where('activity_type', 'order')->orderBy('id', 'desc')->take(5)->get();
    return $data;
}

function getOrderSummery()
{
    $date_of_30_days_after = date("Y-m-d", strtotime("+1 month"));
    $date_of_14_days_ago = date("Y-m-d", strtotime("-2 week"));
    $today = date("Y-m-d");
    $data['orders_shipping_soon'] = DB::table('buying_orders')->where('handover_date', '<', $date_of_30_days_after)->where('handover_date', '>', $today)->get();
    $data['recent_orders'] = DB::table('buying_orders')->where('created_at', '>', $date_of_14_days_ago)->where('created_at', '<', $today)->get();
    $data['inactive_orders'] = DB::table('buying_orders')->where('updated_at', '<', $date_of_14_days_ago)->get();
    $data['recent_shipments'] = DB::table('buying_orders')->where('handedover_date', '>', $date_of_14_days_ago)->where('handedover_date', '<', $today)->get();
    $data['suppliers'] = DB::table('buying_orders')->join('suppliers', 'suppliers.id', '=', 'buying_orders.supplier_id')->groupBy('supplier_id')->select('suppliers.supplier_name','suppliers.id','buying_orders.supplier_id', DB::raw('count(*) as total_orders'))->get();
    return $data;
}
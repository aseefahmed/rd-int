<?php

namespace App\Http\Controllers;

use App\Buyer;
use App\BuyingOrder;
use App\Calendar;
use App\Document;
use App\DocumentType;
use App\Pricechart;
use App\Supplier;
use App\YarnType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Excel;

class BuyingOrderController extends Controller
{
    public function index()
    {
        $data['orders'] = DB::table('buying_orders')->leftJoin('suppliers', 'suppliers.id', '=', 'buying_orders.supplier_id')->leftJoin('buyers', 'buyers.id', '=', 'buying_orders.customer')->get();
    
        $data['yarnlist'] = DB::table('yarns')->get();
        $data['colors'] = DB::table('colors')->get();
        $data['sizes'] = DB::table('sizes')->orderBy('sort_order', 'asc')->get();
        return view('buying.orders', $data);
    }

    public function ordersList()
    {

        $data['orders'] = DB::table('buying_orders')->leftJoin('suppliers', 'suppliers.id', '=', 'buying_orders.supplier_id')->leftJoin('buyers', 'buyers.id', '=', 'buying_orders.customer')->leftJoin('yarns', 'yarns.id', 'buying_orders.yarn_ref_details')->leftJoin('yarn_details', 'buying_orders.ply', '=', 'yarn_details.id')->select('buying_orders.id as id', 'buying_orders.style as Style', 'buying_orders.ref as Ref','buying_orders.session as Season',
                                                                                                                                          'suppliers.supplier_name as Factory', 'buying_orders.Gauge', 'yarns.yarn_code as Yarn', 'yarn_details.ply_b_d as Ply', "buying_orders.knitting_pattern as KnittingPattern", 'buying_orders.trims as Trims' , 'buying_orders.qty as Qty', 'buying_orders.handover_date as HandOverDate', 'buying_orders.confirmed_price as Price','buying_orders.po as PO',
             'buying_orders.contract_weight as Weight', 'buyers.buyer_name as Customer', 'buying_orders.sizing as Sizing' , 'buying_orders.overseas_accessories as OverseasAcces' , 'buying_orders.accessories as Accessories', 'buying_orders.hang_tag as HangTag','buying_orders.inspection_date as InspectionDate','buying_orders.handedover_date as HandedoverDate','buying_orders.handedover_qty as HandedoverQty',
             'buying_orders.mode as Mode', 'buying_orders.destination as Destination','buying_orders.shipping_hbl_awb as HBL/AWB','buying_orders.shipping_vsl_flight as M.Vsl/Flight','buying_orders.shipping_etd as ETD','buying_orders.shipping_eta as ETA','buying_orders.shipping_master_lc as MasterL/C','buying_orders.shipping_invoice as Invoice','buying_orders.shipping_invoice_value as InvoiceValue',
             'buying_orders.doc_status as DocumentStatus','buying_orders.doc_sent_courier_no as TrackingNo','buying_orders.doc_date as DocumentSentDate','buying_orders.payment as Payment','buying_orders.payment_date as PaymentDate','buying_orders.remarks as Remarks','buying_orders.production_status as Production','buying_orders.cbm as CBM',
             'buying_orders.shipping_sample_required as ShippingRequirment','buying_orders.shipping_sample_sent as ShippingStatus','buying_orders.shipping_sent_date as ShippingStatusDate',
             'buying_orders.sample_req as SampleRequirment', 'buying_orders.sample_status as SampleStatus', 'buying_orders.sample_date as SampleDate',
             'buying_orders.approved_weight as ApprovedWeight','buying_orders.actual_production_weight as ActualWeight','buying_orders.confirmed_price as ConfirmedPrice',DB::raw("confirmed_price*qty as OrderValue"),
             'buying_orders.knitting as Knitting','buying_orders.linking as Linking','buying_orders.finishing as Finishing','buying_orders.packing as Packing',
            'buying_orders.accys_status as Status(O/A)', 'buying_orders.care_label_composition as CareLabelComposition', 'buying_orders.ca_rn as CA/RN' )->get();
        //$data['orders'] = DB::table('buying_orders')->leftJoin('suppliers', 'suppliers.id', '=', 'buying_orders.supplier_id')->leftJoin('buyers', 'buyers.id', '=', 'buying_orders.customer')->get();
        $data['data_of_14_days_ago'] = date("Y-m-d", strtotime("today"));
        return $data;
    }

    public function getOrdersSummery()
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

    public function getSummery($id)
    {
        $data['orders'] = DB::table('buying_orders')->where('customer', $id)->get();
        $data['documents'] = DB::table('documents')->leftJoin('buying_orders', 'documents.reference_id', '=', 'buying_orders.id')->where('buying_orders.customer', $id)->select('documents.file_type','documents.filename')->get();
        return $data;

    }

    public function getOrderDetails($id)
    {
      
        $data['order'] = BuyingOrder::where('id', $id)->get();
        $data['extended_shipment_dates'] = DB::table('order_shipment_dates')->where('order_id', $id)->get();
        $data['yarnslist'] = DB::table('yarns')->get();
        $data['color_names'] = DB::table('colors')->get();
        $data['buying_orders_colors'] = DB::table('buying_orders_colors')->where('order_id', $id)->get();
        $data['buying_sizes'] = DB::table('buying_order_sizes')->join('sizes', 'sizes.size', '=', 'buying_order_sizes.size')->where('order_id', $id)->orderBy('sort_order')->get();
        $data['yarn_ply'] = DB::table('yarn_details')->where('yarn_code', $data['order'][0]->yarn_ref_details)->get();
        $data['doctypes'] = DB::table('document_types')->get();
        $data['suppliers'] = DB::table('buying_orders')->join('suppliers', 'suppliers.id', '=', 'buying_orders.supplier_id')->where('buying_orders.id', $id)->get();
        //$data['suppliers'] = DB::table(Supplier::where('merchandiser_id', Auth::user()->id)->get();
        $data['documents'] = Document::join('document_types', 'document_types.id', '=', 'documents.file_type')->where('reference_id', $id)->orderBy('id')->select('documents.*', 'document_types.document_type')->get();
        $data['total_documents'] = Document::where('reference_id', $id)->count();
        $data['today'] = date("Y-m-d");
        $data['buyers'] = Buyer::get();
        $data['user_id'] = $data['order'][0]->merchandiser_id;
        $data['reference'] = $id;
        $data['yarn_types'] = YarnType::get();
        return view('buying.order_details', $data);

    }

    public function updateSizeQty($order_id, $color_id, $qty, $order_size_id){
    
        /*DB::table('buying_order_sizes')->where('order_id', $order_id)->where('size', $size)->update([
                'qty' => $qty
            ]);*/
        $count = DB::table('buying_colors_quantities')->where('order_id', $order_id)->where('color_id', $color_id)->where('order_sizes_id', $order_size_id)->count();
        if($count == 0){
            DB::table('buying_colors_quantities')->insert([
                'order_id' => $order_id,
                'quantity' => $qty,
                'color_id' => $color_id,
                'order_sizes_id' => $order_size_id,
            ]);
        }else{
            DB::table('buying_colors_quantities')->where('order_id', $order_id)->where('color_id', $color_id)->where('order_sizes_id', $order_size_id)->update([
                'quantity' => $qty
            ]);
        }
    }

    public function getOrderReport()
    {
        $file_name = "report_".time();
        $data['orders'] = DB::table('buying_orders')->leftJoin('suppliers', 'suppliers.id', '=', 'buying_orders.supplier_id')->leftJoin('buyers', 'buyers.id', '=', 'buying_orders.customer')->get();

        
        Excel::create($file_name, function($excel) use ( $data) {
                // Set the spreadsheet title, creator, and description
                $excel->setTitle('Overview');
                $excel->setCreator('Laravel')->setCompany('RD Int');

                // Build the spreadsheet, passing in the payments array
                
                $excel->sheet('Summery', function($sheet) use ($data) {
                    $sheet->setFreeze('A2');
                    $sheet->freezeFirstColumn();
                    $sheet->loadView('excel.order_overview', $data);
                }); 

            })->download('xls');

    }

    public function updateOrder(Request $request)
    {
        $order = BuyingOrder::find($request->id);
        $total = 4;
        $count = 0;
        if(!$request->knitting)
            $order->knitting = '';
        else
        {
            $count++;
        }
        if(!$request->linking)
            $order->linking = '';
        else
        {
            $count++;
        }
        if(!$request->finishing)
            $order->finishing = '';
        else
        {
            $count++;
        }
        if(!$request->packing)
            $order->packing = '';
        else
        {
            $count++;
        }

        if($request->extended_handover_date!=""){
            DB::table('order_shipment_dates')->insert([
                'order_id' => $request->id,
                'shipment_date' => $request->extended_handover_date
            ]);
        }

        if($request->new_colors!=""){
                $colors = explode(",",$request->new_colors);
                foreach($colors as $color){

                    DB::table('colors')->insert([
                        'color' => $color,
                    ]);
                    $mycolor = DB::table('colors')->orderBy('id', 'desc')->take(1)->get();
                    DB::table('buying_orders_colors')->insert([
                        'order_id' => $request->id,
                        'color_id' => $mycolor[0]->id,
                    ]);
                }



        }else{
            if(count($request->color_details)>0){
                    DB::table('buying_orders_colors')->where('order_id', $request->id)->delete();
                    foreach($request->color_details as $color){
                        DB::table('buying_orders_colors')->insert([
                            'order_id' => $request->id,
                            'color_id' => $color,
                        ]);
                    }

            }
        }

        

        /*if(count($request->color_details)>0){
                DB::table('buying_orders_colors')->where('order_id', $request->id)->delete();
                foreach($request->color_details as $color){
                    DB::table('buying_orders_colors')->insert([
                        'order_id' => $request->id,
                        'color_id' => $color,
                    ]);
                }

        }*/
        $order->colors = serialize($request->color_details);
        $order->progress = ($count/$total)*100;
        $order->colors = json_encode($request->colors);
        $order->update($request->all());
        if($request->handedover_date != "0000-00-00")   {
            $calendar = new Calendar();
            $calendar->user_id = Auth::user()->id;
            $calendar->reference = $request->id;
            $calendar->reference_table = "buying_orders";
            $calendar->ip_address = $_SERVER['REMOTE_ADDR'];
            $calendar->title = "Handover Date (Style: $request->style)";
            $calendar->activity_type = "order";
            $calendar->start = $request->handover_date;
            $calendar->color = "#000000";
            $calendar->save();
        }    
        
    }

    public function uploadFiles(Request $request)
    {
        if($request->new_doc_type){
            $doc_type_id = time();
            $doc_type = new DocumentType();
            $doc_type->id = $doc_type_id;
            $doc_type->document_type = $request->new_doc_type;
            $doc_type->save();
        }

        $document = new Document();
        if($request->file != ""){
            $file_extension = $request->file('file')->guessExtension();
            $img_name = time().".".$file_extension;
            $request->file('file')->move('public/uploaded', $img_name);
        }else{
            $img_name = "no_image.png";
        }

        $document->filename = $img_name;
        if($request->new_doc_type){
            $document->file_type = $doc_type_id;
        }else{
            $document->file_type = $request->doc_type;
        }   
        
        $document->description = $request->description;
        $document->reference_id = $request->reference_id;
        $document->save();

        $calendar = new Calendar();
        $calendar->user_id = Auth::user()->id;
        $calendar->reference = $request->reference_id;
        $calendar->reference_table = "documents";
        $calendar->ip_address = $_SERVER['REMOTE_ADDR'];
        $calendar->title = "Uploaded files.";
        $calendar->start = date("Y-m-d h:i:s");
        $calendar->color = "#000000";
        $calendar->save();
    }

    public function savePriceChart(Request $request)
    {
        $order = Pricechart::where('order_id', $request->orderid)->count();
        if($order == 0)
        {
            $pricechart = new Pricechart();
            $pricechart->order_id = $request->orderid;
            $pricechart->price_details = json_encode($request->all());
            $pricechart->save();
        }
        else
        {
            DB::table('pricecharts')->where('order_id', $request->orderid)->update(
                [
                    'price_details' => json_encode($request->all())
                ]
            );
        }

    }

    public function confirmPrice($order_id, $supplier_id, $price)
    {
        DB::table('pricecharts')->where('order_id', $order_id)->update(
            [
                'confirmed_supplier' => $supplier_id,
                'confirmed_price' => $price
            ]
        );
        DB::table('buying_orders')->where('id', $order_id)->update(
            [
                'supplier_id' => $supplier_id,
                'confirmed_price' => $price
            ]
        );
    }
    public function loadPriceChart($id)
    {
        $data['order'] = DB::table('buying_orders')->where('id', $id)->get();
        $data['pricechart_count'] = DB::table('pricecharts')->where('order_id', $id)->count();
        $data['price_chart'] = DB::table('pricecharts')->where('order_id', $id)->get();
        $data['suppliers'] = DB::table('suppliers')->get();
        return view('buying.price_chart', $data);
    }

    public function deleteOrder($id){
        DB::table('buying_orders')->where('id', $id)->delete();
        return redirect('buying/orders');
    }
    public function storeOrders(Request $request)
    {   
        $order_id = time();
        $order = new BuyingOrder();
        $order->id = $order_id;
        $order->style = $request->style;
        $order->ref = $request->ref;
        $order->Gauge = $request->gauge;
        $order->yarn_ref_details = $request->yarn_ref_details;
        $order->qty = $request->qty;
        $order->sizing = $request->sizing;
        $order->main_label = $request->main_label;
        $order->hang_tag = $request->hang_tag;
        $order->ply = $request->ply;
        
        $order->contract_weight = $request->contract_weight;
        $order->merchandiser_id = Auth::user()->id;
        $order->save();
        if(count($request->order_sizes)>0){
                foreach($request->order_sizes as $size){
                    DB::table('buying_order_sizes')->insert([
                        'order_id' => $order_id,
                        'size' => $size,
                    ]);
                }

        }
        $calendar = new Calendar();
        $calendar->user_id = Auth::user()->id;
        $calendar->reference = $order_id;
        $calendar->reference_table = "buying_orders";
        $calendar->ip_address = $_SERVER['REMOTE_ADDR'];
        $calendar->title = "Created orders.";
        $calendar->start = date("Y-m-d h:i:s");
        $calendar->color = "#000000";
        $calendar->save();
    }
}

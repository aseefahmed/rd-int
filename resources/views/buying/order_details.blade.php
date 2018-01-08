@extends('layouts.dashboard.main')
@section('content')     
    <?php
        $days_left = date_diff(date_create($order[0]->handover_date), date_create($today))->days;

    ?>
    <style>
         input{
            text-transform: uppercase;
         } 
            
    </style>
    <form class="col s12" id="edit_order_form" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
    <div id="attach_files" class="modal modal-fixed-footer">
            <div class="modal-content">
                <button class="btn waves-effect waves-light green darken-1" >Upload Documents</button>

                <input type="hidden" name="reference_id" id="reference_id" value="{{ $order[0]->id }}">
                <div class="row">
                    <div class="input-field col s6">
                        <select name="doc_type" id="upload_doc_type">       
                            <option value="">Choose Document Type</option>
                            <option value="0">Create New Document Type</option>
                            @foreach($doctypes as $doctype)
                                <option value="{{$doctype->id}}">{{$doctype->document_type}}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="input-field col s6"  id="new_doc_type"  style="display: none;">
                        <input name="new_doc_type" type="text">
                        <label>Document Type</label>
                    </div>
                    <div class="input-field col s12">
                        <input name="description" type="text">
                        <label>Description</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="input_file" name="file" type="file" class="file-loading"><br><br><br><br><br><br>
                        <label class="control-label">Select File</label>
                    </div>
                </div>
            </div>
            <div class="modal-footer green lighten-4">
                <a href="#" class="waves-effect waves-red btn modal-action modal-close">Cancel</a>
                <a href="#" class="waves-effect waves-light light-blue btn modal-action modal-close" id="file_upload">Upload</a>
            </div>
    </div>
    <div class="row" ng-controller="BuyingOrderController"  ng-init="ordersSummery()">
        <div class="col-sm-12">
            <div class="col-sm-6 text-left">
                <h4 class="header">
                    Order Details
                    @if($days_left <= 30)
                        <div class="chip red darken-1 white-text">
                           <i class="mdi-action-report-problem"></i> urgent
                        </div>
                    @endif
                </h4>
            </div>
            <!-- <div class="col-sm-6 text-right">
                <div class="fixed-action-btn horizontal">
                    <a class="btn-floating btn-large red">
                        <i class="mdi-social-notifications-none"></i>
                    </a>
                    <ul>
                        <li><a class="btn-floating green modal-trigger" href="#attach_files"><i class="large mdi-editor-publish"></i></a></li>
                    </ul>
                </div>
            </div> -->
            <ol class="breadcrumbs">
                <li><a href="{{url('dashboard')}}">Home</a></li>
                <li>{{Route::currentRouteName()}}</li>
            </ol>
            <div class="row">
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content  green white-text">
                            <p class="card-stats-title"><i class="mdi-social-group-add"></i> Progress</p>
                            <h4 class="card-stats-number">{{ $order[0]->progress }}%</h4>
                            <p class="card-stats-compare">Completed</span>
                            </p>
                        </div>
                        <div class="card-action  green darken-2">
                            <div id="clients-bar" class="center-align"></div>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content purple white-text">
                            <p class="card-stats-title"><i class="mdi-editor-attach-money"></i>Total Documents</p>
                            <h4 class="card-stats-number">{{ $total_documents }}</h4>
                            <p class="card-stats-compare">Uploaded</span>
                            </p>
                        </div>
                        <div class="card-action purple darken-2">
                            <div id="sales-compositebar" class="center-align"></div>

                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content blue-grey white-text">
                            <p class="card-stats-title"><i class="mdi-action-trending-up"></i> Shipping Date</p>
                            <h4 class="card-stats-number">{{ $days_left }}</h4>
                            
                            @if(date_create($order[0]->handover_date) < date_create($today))
                               <p class="card-stats-compare">Days Over</span>
                            @else
                                <p class="card-stats-compare">Days left</span>
                            @endif
                            
                            </p>
                        </div>
                        <div class="card-action blue-grey darken-2">
                            <div id="profit-tristate" class="center-align"></div>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content deep-purple white-text">
                            <p class="card-stats-title"><i class="mdi-editor-insert-drive-file"></i> Last Updated</p>
                            <h4 class="card-stats-number">{{ date_format(date_create($order[0]->updated_at),'dS M Y') }}</h4>
                            <p class="card-stats-compare">{{ date_format(date_create($order[0]->updated_at),'Y') }}</p>
                            </p>
                        </div>
                        <div class="card-action  deep-purple darken-2">
                            <div id="invoice-line" class="center-align"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <div class="divider"></div>
            <div class="row">
                <div class="col s8">

                    <p>
                            <a class="waves-effect orange white-text btn" href="{{ url('buying/order/pricechart/'.$order[0]->id) }}">Price Chart</a>
                            <a class="waves-effect waves-light btn modal-trigger" href="#attach_files"> Upload Document</a>
                            @if(Auth::user()->emp_role==1)
                            <a class="btn waves-effect waves-light green darken-1" href="{{ url('buying/order/delete/'.$order[0]->id) }}">Delete</a>
                            @endif
                    </p>
                    <div class="card-panel">
                        <div class="row">
                            {{ csrf_field() }}
                            <input type="hidden" name="id" value="{{ $order[0]->id }}">
                            <div class="row">
                                <div class="input-field col s3">
                                    @if(count($suppliers) > 0)
                                        <input type="text" value="{{ $suppliers[0]->supplier_name }}" readonly>
                                    @else
                                        <input type="text" value="Not Factory Choosen" readonly>
                                    @endif
                                    <label>Factory</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="session" type="text" value="{{ $order[0]->session }}" >
                                    <label>Season</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="style" type="text" value="{{ $order[0]->style }}">
                                    <label>Style</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="ref" type="text" value="{{ $order[0]->ref }}">
                                    <label>Ref</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s3">
                                    <input name="Gauge" type="text" value="{{ $order[0]->Gauge }}">
                                    <label>Gauge</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="contract_weight" type="text" value="{{ $order[0]->contract_weight }}">
                                    <label>Contract Weight</label>
                                </div>
                                <div class="input-field col s3">
                                    <select name="yarn_ref_details" page="order_details" id="yarn_ref_details">
                                        <option value="0">Chose Yarn</option>
                                        @foreach($yarnslist as $yarn)
                                            <option value="{{ $yarn->id}}" <?php if($yarn->id == $order[0]->yarn_ref_details){echo "selected";} ?>>{{ $yarn->yarn_code }}</option>
                                        @endforeach
                                    </select>
                                    <label>Yarn (Ref.)</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="Gauge" type="text" value="{{ getCompositionLabel($order[0]->ply)[0]->yarn_content }}">
                                    <label>Care Label Composition </label>
                                </div>



                                 <div class="input-field col s12" id="row1">    
                                    @if($order[0]->ply!="")
                                    <div class="collection">
                                        <a href="#!" class="collection-item active">
                                            @foreach($yarn_ply as $index=>$yarn)
                                                @if($yarn->id==$order[0]->ply)
                                          

                                                            {{$yarn->ply_b_d}}
                                                   
                                                @endif
                                            @endforeach
                                        </a> 
                                    </div>
                                    @endif
                                        

                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s3">
                                    <select name="customer">
                                        @foreach($buyers as $buyer)
                                            <option value="{{ $buyer->id}}" <?php if($buyer->id == $order[0]->customer){echo "selected";} ?>>{{ $buyer->buyer_name }}</option>
                                        @endforeach
                                    </select>
                                    <label>Customer</label>
                                </div>
                                <div class="input-field col s3">
                                    <input id="order_qty" type="text" value="">
                                    <label>Order Qty</label>
                                </div>


                                <div class="input-field col s3">
                                    <input type="text" name="po" value="{{ $order[0]->po }}">
                                    <label for="dob">PO Number</label>
                                </div>
                                <div class="input-field col s3">
                                    <input type="date" name="po_recieved_date" value="{{ $order[0]->po_recieved_date }}" class="datepicker">
                                    <label for="dob">PO Date</label>
                                </div>

                            </div>
                            <div class="row">
                                <div class="input-field col s3">
                                    <input type="date" name="handover_date" value="{{ $order[0]->handover_date }}" class="datepicker">
                                    <label for="dob">Shipment Date</label>
                                </div>
                                <div class="input-field col s3">
                                    <?php 
                                        if(count($extended_shipment_dates)>0){
                                            $value=$extended_shipment_dates[count($extended_shipment_dates)-1]->shipment_date;
                                        }else{
                                            $value="";
                                        }
                                    ?>
                                    <input type="date" name="extended_handover_date" value="{{ $value }}" class="datepicker">
                                    <label for="dob">Extended Shipment Date</label>
                                </div>
                            </div>

                            <div class="row">

                                <div class="input-field col s3">
                                    <input name="shipping_sample_required" type="text" value="{{ $order[0]->shipping_sample_required }}">
                                    <label>Shipping Requirment</label>
                                </div>
                                <div class="input-field col s3">
                                    <input name="shipping_sample_sent" type="text" value="{{ $order[0]->shipping_sample_sent }}">
                                    <label>Shipping Status</label>
                                </div>
                                <div class="input-field col s3">
                                    <input name="shipping_sent_date" type="date" value="{{ $order[0]->shipping_sent_date }}" class="datepicker">
                                    <label>Date</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s3">
                                    <input name="sample_req" type="text" value="{{ $order[0]->sample_req }}">
                                    <label>Sample Requirment</label>
                                </div>
                                <div class="input-field col s3">
                                    <input name="sample_status" type="text" value="{{ $order[0]->sample_status }}">
                                    <label>Sample Status</label>
                                </div>
                                <div class="input-field col s3">
                                    <input name="sample_date" type="date" value="{{ $order[0]->sample_date }}" class="datepicker">
                                    <label>Sample Date</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s3">
                                    <textarea name="accessories" class="materialize-textarea">{{ $order[0]->accessories }}</textarea>
                                    <label>Accessories</label>
                                </div>

                                <div class="input-field col s3">
                                    <textarea name="overseas_accessories" class="materialize-textarea">{{ $order[0]->overseas_accessories }}</textarea>
                                    <label>Overseas Accessories	</label>
                                </div>

                                
                            </div>
                            <div class="row">
                                <div class="input-field col s3">
                                    <select name="accys_status">
                                        <option value="">Chose Status</option>
                                        <option <?php if($order[0]->accys_status=="PENDING"){echo "selected";} ?> value="PENDING">PENDING</option>
                                        <option <?php if($order[0]->accys_status=="IN TRANSIT"){echo "selected";} ?> value="IN TRANSIT">IN TRANSIT</option>
                                        <option <?php if($order[0]->accys_status=="RECEIVED"){echo "selected";} ?> value="RECEIVED">RECEIVED </option>
                                        <option <?php if($order[0]->accys_status=="DELIVERED TO FACTORY"){echo "selected";} ?> VALUE="DELIVERED TO FACTORY">DELIVERED TO FACTORY</option>
                                    </select>
                                    <label>Overseas Accessories Status</label>
                                </div>

                                <div class="input-field col s4">
                                    <input type="text" name="delivery_tracking_number" value="{{ $order[0]->delivery_tracking_number }}">
                                    <label>Delivery Tracking Number (if any) </label>
                                </div>

                            </div>
                            <div class="row">
                                <div class="input-field col s3">
                                    <input name="ca_rn" type="text" value="{{ $order[0]->ca_rn }}">
                                    <label>CA/RN</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="fit_sample_sent" type="text" value="{{ $order[0]->fit_sample_sent }}">
                                    <label>Fit Sample Sent	</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="courier_no" type="text" value="{{ $order[0]->courier_no }}">
                                    <label>Courier No.</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="fit_sample_comments" type="text" value="{{ $order[0]->fit_sample_comments }}">
                                    <label>Fit Sample Comments</label>
                                </div>
                            </div>
                            <div class="row">
                                {{--<div class="input-field col s3">
                                    <input name="yarn" type="text" value="{{ $order[0]->yarn }}">
                                    <label>Yarn</label>
                                </div>--}}

                                

                                <div class="input-field col s3">
                                    <input name="knitting_pattern" type="text" value="{{ $order[0]->knitting_pattern }}">
                                    <label>Knitting Pattern</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="trims" type="text" value="{{ $order[0]->trims }}">
                                    <label>Trims</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="hang_tag" type="text" value="{{ $order[0]->hang_tag }}">
                                    <label>Hang Tag</label>
                                </div>
                            </div>
                            <div class="row">

                                

                                <div class="input-field col s3">
                                    <?php $sizing = getOrderSizes($order[0]->id); ?>
                                    <input name="sizing" type="text" value="{{ $sizing }}">
                                    <label>Sizing</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s3">
                                    <input type="date" name="pi_date" value="{{ $order[0]->pi_date }}" class="datepicker">
                                    <label for="dob">PI Date</label>
                                </div>
                            </div>
                            

                            <div class="row">

                                <div class="input-field col s12">
                                    <input name="remarks" type="text" value="{{ $order[0]->remarks }}">
                                    <label>Remarks</label>
                                </div>
                            </div>


                            <div class="row">
                                <div class="input-field col s6">
                                    <select multiple name="color_details[]" class="select2js" id="color_details">
                                        <option value="">Chose Color</option>
                                        @foreach($color_names as $color)
                                            <option value="{{ $color->id}}" >{{ $color->color }}</option>
                                        @endforeach
                                    </select>
                                    <label>Color(s)</label>
                                </div>   

                                <div class="input-field col s6">
                                    <input name="new_colors" type="text" value="">
                                    <label>New Colors</label>
                                </div> 
                                <div class="input-field col s12">
                                @if(count($buying_orders_colors)>0)
                                    <table>
                                        <thead>
                                          <tr>
                                              <th class="btn waves-effect waves-light green darken-1" colspan="8">Color/Size Breakdown</th>
                                          </tr>
                                          <tr style="background-color: #660000; color: #fff;">
                                              <th style="border: 1px solid #000;" width="5%">Color</th>
                                              @foreach($buying_sizes as $size)
                                                    <th style="border: 1px solid #000;">{{$size->size}}</th>
                                              @endforeach
                                                    <th style="border: 1px solid #000;  width: 10%;">Grand Total</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <?php $grand_totals = 0; ?>
                                          @foreach($buying_orders_colors as $color)
                                          <?php $row_total = 0; ?>
                                              <tr>
                                                  <th style="border: 1px solid #000;">{{getColorDetails($color->color_id)[0]->color}}</th>
                                                  @foreach($buying_sizes as $size)
                                                    <th style="border: 1px solid #000;">
                                                        @if(count(getColorQuantity($color->color_id, $size->id, $order[0]->id)) == 0)
                                                            <?php 
                                                                    $grand_totals = $grand_totals+0; 
                                                                $size_{$size->id}[] = 0;
                                                                $row_total+=0;
                                                            ?>
                                                           <input order_size_id="{{$size->id}}" color_id="{{$color->color_id}}" value="0" order_id="{{$order[0]->id}}" size="{{$size->size}}" class="size_val" type="number" name="c_val">
                                                        @else
                                                            <?php 
                                                                $grand_totals = $grand_totals+getColorQuantity($color->color_id, $size->id, $order[0]->id)[0]->quantity; 
                                                                $size_{$size->id}[] = getColorQuantity($color->color_id, $size->id, $order[0]->id)[0]->quantity;
                                                                $row_total+=getColorQuantity($color->color_id, $size->id, $order[0]->id)[0]->quantity;
                                                            ?>
                                                            <input order_size_id="{{$size->id}}" color_id="{{$color->color_id}}" value="{{getColorQuantity($color->color_id, $size->id, $order[0]->id)[0]->quantity}}" order_id="{{$order[0]->id}}" size="{{$size->size}}" class="size_val" type="number" name="c_val">
                                                        @endif
                                                    </th>
                                                  @endforeach
                                                  <th style="border: 1px solid #000;  width: 10%;">
                                                       {{$row_total}}
                                                    </th>
                                              </tr>      
                                          @endforeach
                                          <tr style="background-color: #660000; color: #fff;">
                                              <th style="border: 1px solid #000;" width="5%">Grand Total</th>
                                              <?php $total_sum = 0;?>
                                              @foreach($buying_sizes as $size)
                                                <?php $array_sum = array_sum($size_{$size->id}); $total_sum+=$array_sum; ?>
                                                 <th style="border: 1px solid #000;" width="5%">{{$array_sum}}</th>
                                              @endforeach
                                              <th style="border: 1px solid #000;  width: 10%;">
                                                <span id="grand_total_qty">{{$total_sum}}</span>
                                            </th>
                                          </tr>
                                          
                                        </tbody>
                                      </table>
                                    @endif
                                  </div>
                                        

                                </div>



                            <div class="row">
                                <div class="input-field col s12">
                                    <a class="waves-effect waves-light  btn"><i class="mdi-navigation-apps left"></i>Production</a>
                                </div>
                                <!-- <div class="input-field col s12">
                                    <div></div>
                                    <div id="range_02" progress="{{ $order[0]->progress }}"></div>
                                </div> -->
                                <div class="input-field col s2">
                                   <select name="production_status">       
                                        <option value="">Production Status</option>
                                        <option value="Pending">Pending</option>
                                        <option value="In Production">In Production</option>
                                        <option value="Completed">Completed</option>
                                        
                                    </select>
                                    <label for="test4">Production Status</label>
                                </div>
                                <div class="input-field col s2">
                                   <input name="knitting" class="production_progress" type="text" id="test4" value="{{$order[0]->knitting}}" />
                                    <label for="test4">Knitting</label>
                                </div>
                                

                                <div class="input-field col s2">
                                    
                                    <input name="linking" class="production_progress" type="text" id="test4" value="{{$order[0]->linking}}" />
                                    <label for="test5">Linking</label>
                                </div>
                                <div class="input-field col s2">
                                   
                                    <input name="finishing" class="production_progress" type="text" id="test4" value="{{$order[0]->finishing}}" />
                                    <label for="test6">Finishing</label>
                                </div>

                                <div class="input-field col s2">
                                    
                                    <input name="packing" class="production_progress" type="text" id="test4" value="{{$order[0]->packing}}" />
                                    <label for="test7">Packing</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <a class="waves-effect waves-light  btn"><i class="mdi-editor-attach-money left"></i>Final Weight / Price</a>
                                </div>
                                <div class="input-field col s2">
                                    <input name="approved_weight" type="text" value="{{ $order[0]->approved_weight }}">
                                    <label>Approved Weight</label>
                                </div>
                                <div class="input-field col s2">
                                    <input name="actual_production_weight" type="text" value="{{ $order[0]->actual_production_weight }}">
                                    <label>Actual Weight</label>
                                </div>
                                <div class="input-field col s2">
                                    <input name="qty" type="text" value="{{ $order[0]->qty }}">
                                    <label>Qty</label>
                                </div>

                                {{--<div class="input-field col s2">
                                    <input name="price" type="text" value="{{ $order[0]->price }}">
                                    <label>Price</label>
                                </div>--}}

                                <div class="input-field col s2">
                                    <input name="confirmed_price" type="text" value="{{ $order[0]->confirmed_price }}">
                                    <label>Confirmed Price</label>
                                </div>

                                <div class="input-field col s2">
                                    <input name="value" type="text" value="{{ $order[0]->confirmed_price * $order[0]->qty }}" readonly>
                                    <label>Order Value</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <a class="waves-effect waves-light  btn"><i class="mdi-maps-local-shipping left"></i>Delivery Info</a>
                                </div>
                                <div class="input-field col s3">
                                    <input name="inspection_date" class="datepicker" type="text" value="{{ $order[0]->inspection_date }}">
                                    <label>Inspection Date</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="handedover_date" class="datepicker" type="text" value="{{ $order[0]->handedover_date }}">
                                    <label>HandedOver Date</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="handedover_qty" type="text" value="{{ $order[0]->handedover_qty }}">
                                    <label>Handedover Qty</label>
                                </div>
                                <div class="input-field col s3">
                                    <input name="cbm" type="text" value="{{ $order[0]->cbm }}">
                                    <label>CBM</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <a class="waves-effect waves-light  btn"><i class="mdi-action-account-balance left"></i>Shipping Info</a>
                                </div>
                                <div class="input-field col s3">
                                    <input name="mode" type="text" value="{{ $order[0]->mode }}">
                                    <label>Mode</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="destination" type="text" value="{{ $order[0]->destination }}">
                                    <label>Destination</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="shipping_hbl_awb" type="text" value="{{ $order[0]->shipping_hbl_awb }}">
                                    <label>hbl_awb</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="shipping_vsl_flight" type="text" value="{{ $order[0]->shipping_vsl_flight }}" >
                                    <label>M.Vsl / Flight</label>
                                </div>


                                <div class="input-field col s3">
                                    <input name="shipping_etd" class="datepicker" type="text" value="{{ $order[0]->shipping_etd }}">
                                    <label>ETD</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="shipping_eta" class="datepicker" type="text" value="{{ $order[0]->shipping_eta }}">
                                    <label>ETA</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="shipping_master_lc" type="text" value="{{ $order[0]->shipping_master_lc }}">
                                    <label>Master L/C</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="shipping_invoice" type="text" value="{{ $order[0]->shipping_invoice }}">
                                    <label>Invoice</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="shipping_invoice_value" type="text" value="{{ $order[0]->shipping_invoice_value }}" >
                                    <label>Invoice value</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <a class="waves-effect waves-light  btn"><i class="mdi-communication-email left"></i>Document Info</a>
                                </div>
                                <div class="input-field col s3">
                                    <input name="doc_status" type="text" value="{{ $order[0]->doc_status }}">
                                    <label>Document status</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="doc_sent_courier_no" type="text" value="{{ $order[0]->doc_sent_courier_no }}">
                                    <label>Tracking #</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="doc_date" class="datepicker"  type="text" value="{{ $order[0]->doc_date }}">
                                    <label>Date</label>
                                </div>

                                <div class="input-field col s3">
                                    <input name="payment" type="text" value="{{ $order[0]->payment}}">
                                    <label>Payment</label>
                                </div>
                                <div class="input-field col s3">
                                    <input name="payment_date" class="datepicker" type="text"  value="{{ $order[0]->payment_date}}">
                                    <label>Payment Date</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <button class="btn cyan waves-effect waves-light right" type="submit" id="edit_order" name="action">
                                        Save
                                        <i class="mdi-content-send right"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @include('partials.order_details_partial')
                {{-- @include('partials.merchandiser_widget') --}}
                @include('partials.activities')
            </div>

        </div>

    </div>


    </form>
@endsection
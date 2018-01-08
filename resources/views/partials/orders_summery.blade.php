<?php
    $order_summery = getOrderSummery();
?>
<div class="col s4">
    <ul class="collapsible collapsible-accordion" data-collapsible="accordion">
        <li>
            <div class="collapsible-header purple white-text active"><i class="mdi-device-access-alarms"></i> Orders Shipping Soon</div>
            <div class="collapsible-body purple lighten-5">
                <div class="collection">
                    @foreach($order_summery['orders_shipping_soon'] as $order)
                        <a href="{{ url('buying/order/'.$order->id ) }}" class="collection-item">{{ $order->style }}<span class="new badge">{{ $order->progress }}% completed</span></a>
                    @endforeach
                    @if(count($order_summery['orders_shipping_soon']) == 0)
                        <a class="collection-item">No orders found</a>
                    @endif
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header red white-text"><i class="mdi-device-battery-charging-20"></i> Recent Orders</div>
            <div class="collapsible-body red lighten-5 lighten-5">
                <div class="collection">
                    @foreach($order_summery['recent_orders'] as $order)
                        <a href="{{ url('buying/order/'.$order->id ) }}" class="collection-item">{{ $order->style }}<span class="new badge">{{ $order->progress }}% completed</span></a>
                    @endforeach
                    @if(count($order_summery['recent_orders']) == 0)
                        <a class="collection-item">No orders found</a>
                    @endif
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header teal white-text"><i class="mdi-device-dvr"></i> Inactive Orders</div>
            <div class="collapsible-body teal lighten-5">
                <div class="collection">
                    @foreach($order_summery['inactive_orders'] as $order)
                        <a href="{{ url('buying/order/'.$order->id ) }}" class="collection-item">{{ $order->style }}<span class="new badge">{{ $order->progress }}% completed</span></a>
                    @endforeach
                    @if(count($order_summery['inactive_orders']) == 0)
                        <a class="collection-item">No orders found</a>
                    @endif
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header lime darken-4 white-text"><i class="mdi-device-bluetooth-searching"></i> Recent Shipments</div>
            <div class="collapsible-body lime lighten-5">
                <div class="collection">
                    @foreach($order_summery['recent_shipments'] as $order)
                        <a href="{{ url('buying/order/'.$order->id ) }}" class="collection-item">{{ $order->style }}<span class="new badge">{{ $order->progress }}% completed</span></a>
                    @endforeach
                    @if(count($order_summery['recent_shipments']) == 0)
                        <a class="collection-item">No orders found</a>
                    @endif
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header orange white-text"><i class="mdi-device-now-widgets"></i> Suppliers</div>
            <div class="collapsible-body orange lighten-5">
                <div class="collection">
                    @foreach($order_summery['suppliers'] as $order)
                        <a href="{{ url('buying/suppliers/'.$order->supplier_id) }}" class="collection-item">{{ $order->supplier_name }}<span class="new badge">{{ $order->total_orders }} orders</span></a>
                    @endforeach
                    @if(count($order_summery['suppliers']) == 0)
                        <a class="collection-item">No orders found</a>
                    @endif
                </div>
            </div>
        </li>
    </ul>

</div>
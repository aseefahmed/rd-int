<div class="col s4">
    <ul class="collapsible collapsible-accordion" data-collapsible="accordion">
        <li>
            <div class="collapsible-header purple white-text active"><i class="mdi-device-access-alarms"></i> Documents</div>
            <div class="collapsible-body purple lighten-5">
                <div class="collection">
                    @foreach($documents as $document)
                        <a target="_blank" href="{{ url('public/uploaded/'.$document->filename) }}" class="collection-item">{{ $document->document_type }}<span class="new badge">{{ date_format(date_create($document->created_at), 'dS M, Y') }}</span></a>
                    @endforeach
                    @if(count($documents)==0)
                        <a class="collection-item">No documents attached</a>
                    @endif

                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header red white-text"><i class="mdi-device-battery-charging-20"></i> Recent Orders</div>
            <div class="collapsible-body red lighten-5 lighten-5">
                <div class="collection">
                    <a ng-repeat="order in recent_orders" target="_blank" href="{{ url('buying/order/<% order.id %>') }}" class="collection-item"><% order.style %><span class="new badge"><% order.progress %>% completed</span></a>
                    <a ng-if="recent_orders.length==0" class="collection-item">No orders found</a>
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header teal white-text"><i class="mdi-device-dvr"></i> Inactive Orders</div>
            <div class="collapsible-body teal lighten-5">
                <div class="collection">
                    <a ng-repeat="order in inactive_orders" href="{{ url('buying/order/<% order.id %>') }}" class="collection-item"><% order.style %><span class="new badge"><% order.progress %>% completed</span></a>
                    <a ng-if="inactive_orders.length==0" class="collection-item">No orders found</a>
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header lime darken-4 white-text"><i class="mdi-device-bluetooth-searching"></i> Recent Shipments</div>
            <div class="collapsible-body lime lighten-5">
                <div class="collection">
                    <a ng-repeat="order in recent_shipments" href="{{ url('buying/order/<% order.id %>') }}" class="collection-item"><% order.style %></a>
                    <a ng-if="recent_shipments.length==0" class="collection-item">No orders found</a>
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header orange white-text"><i class="mdi-device-now-widgets"></i> Remarks</div>
            <div class="collapsible-body orange lighten-5">
                <div class="collection">
                    <a ng-repeat="order in suppliers" href="{{ url('buying/suppliers/<% order.supplier_id %>') }}" class="collection-item"><% order.supplier_name %><span class="new badge"><% order.total_orders %> orders</span></a>
                    <a ng-if="suppliers.length==0" class="collection-item">No Suppliers found</a>
                </div>
            </div>
        </li>
    </ul>

</div>

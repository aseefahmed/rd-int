<div class="col s4">
    <ul class="collapsible collapsible-accordion" data-collapsible="accordion">
        <li>
            <div class="collapsible-header purple white-text active"><i class="mdi-device-access-alarms"></i> Related Orders</div>
            <div class="collapsible-body purple lighten-5">
                <div class="collection">
                    <a ng-repeat="order in orders" href="{{ url('buying/order/<% order.id %>') }}" class="collection-item"><% order.style %><span class="new badge"><% order.progress %>% completed</span></a>
                    <a ng-if="orders.length==0" class="collection-item">No orders found</a>
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header red white-text"><i class="mdi-device-battery-charging-20"></i> Documents</div>
            <div class="collapsible-body red lighten-5 lighten-5">
                <div class="collection">
                    <a ng-repeat="document in documents" href="{{ asset('public/uploaded/<% document.filename %>') }}" class="collection-item"><% document.file_type %></a>
                    <a ng-if="documents.length==0" class="collection-item">No orders found</a>
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header teal white-text"><i class="mdi-device-dvr"></i> Inactive Orders</div>
            <div class="collapsible-body teal lighten-5">
                <div class="collection">
                    <a ng-repeat="order in inactive_orders" href="{{ url('buying/order/<% order.id %>') }}" class="collection-item"><% order.style %><span class="new badge">4% Complete</span></a>
                    <a ng-if="inactive_orders.length==0" class="collection-item">No orders found</a>
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header lime darken-4 white-text"><i class="mdi-device-bluetooth-searching"></i> Recent Shipments</div>
            <div class="collapsible-body lime lighten-5">
                <div class="collection">
                    <a ng-repeat="order in recent_shipments" href="{{ url('buying/order/<% order.id %>') }}" class="collection-item"><% order.style %><span class="new badge">4% Complete</span></a>
                    <a ng-if="recent_shipments.length==0" class="collection-item">No orders found</a>
                </div>
            </div>
        </li>
        <li>
            <div class="collapsible-header orange white-text"><i class="mdi-device-now-widgets"></i> Comments</div>
            <div class="collapsible-body orange lighten-5">
                <div class="collection">
                    <a ng-repeat="order in suppliers" href="{{ url('buying/suppliers/<% order.supplier_id %>') }}" class="collection-item"><% order.supplier_name %><span class="new badge"><% order.total_orders %> orders</span></a>
                    <a ng-if="suppliers.length==0" class="collection-item">No Suppliers found</a>
                </div>
            </div>
        </li>
    </ul>

</div>
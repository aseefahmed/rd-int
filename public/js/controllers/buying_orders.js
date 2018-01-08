angular.module('myApp').controller('BuyingOrderController', function($scope, $http, $window){
    $scope.add_buying_order = function(form) {

        var data = $.param({
            style: $scope.order.style,
            ref: $scope.order.ref,
            gauge: $scope.order.gauge,
            yarn_ref_details: $('#yarn_ref_details').val(),
            qty: $scope.order.qty,
            sizing: $scope.order.sizing,
            main_label: $scope.order.main_label,
            order_sizes: $scope.order.order_sizes,
            hang_tag: $scope.order.hang_tag,
            ply: $("input[name='ply']:checked").val(),
            colors: $('#color_details').val(),
            contract_weight: $scope.order.contract_weight
        });
        var config = {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        };
        $http.post(app.host + 'buying/orders/store', data, config).success(function (response, status) {
            console.log('+++');
            console.log(response)
            getData();
            Materialize.toast('<span>Operation has been successfull.</span>', 1500);
            $scope.order = {};
        }).error(function (result, status) {
        });

    }

    $scope.add_buyer = function(form) {

        var data = $.param({
            buyer_name: $scope.order.buyer_name,
            contact_person: $scope.order.contact_person,
            email_address: $scope.order.email_address,
            contact_number: $scope.order.contact_number,
            website: $scope.order.website,
            postal_address: $scope.order.postal_address
        });
        var config = {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        };
        $http.post(app.host + 'buying/buyers/store', data, config).success(function (response, status) {
            $http.get(app.host + 'buying/getbuyersList').then(function (result) {
                $scope.buyers = result.data.buyers;
            });
            Materialize.toast('<span>Operation has been successfull.</span>', 1500);
            $scope.order = {};
            $window.location.href = app.host + 'buying/buyers';
        }).error(function (result, status) {
        });

    }
    $scope.add_supplier = function(form) {

        var data = $.param({
            supplier_name: $scope.order.supplier_name,
            contact_person: $scope.order.contact_person,
            email_address: $scope.order.email_address,
            contact_number: $scope.order.contact_number,
            website: $scope.order.website,
            postal_address: $scope.order.postal_address
        });
        var config = {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        };
        $http.post(app.host + 'buying/suppliers/store', data, config).success(function (response, status) {

            Materialize.toast('<span>Operation has been successfull.</span>', 1500);
            $scope.order = {};
            window.location.href = app.host + 'buying/suppliers';
        }).error(function (result, status) {
            console.log(result)
        });

    }
    $scope.buyers_list = function(){
        $http.get(app.host + 'buying/getbuyersList').then(function (result) {
            $scope.buyers = result.data.buyers;

        });
    }
    $scope.getSummery = function(id){
        $http.get(app.host + 'buying/getSummery/'+id).then(function (result) {
            $scope.orders = result.data.orders;
            $scope.documents = result.data.documents;
            console.log('dd')
            console.log($scope.documents)
        });
    };
    $http.get(app.host + 'buying/ordersList').then(function (result) {
        console.log('ddd')
        $scope.orders = result.data.orders;
        getData();

    });

    function getData()
    {
        $("#jsGrid-basic").jsGrid({
            height: "90%",
            width: "100%",

            filtering: true,
            editing: true,
            sorting: true,
            paging: true,
            autoload: true,
            deleteConfirm: function(item) {
                return "The client \"" + item.Name + "\" will be removed. Are you sure?";
            },
            pageSize: 15,
            pageButtonCount: 5,

            controller: {
                loadData: function() {
                    var d = $.Deferred();

                    $.ajax({
                        url: app.host + 'buying/ordersList',
                        dataType: "json"
                    }).done(function(response) {
                        console.log(response)
                        $scope.orders = response.orders;
                        d.resolve($scope.orders);
                    }).error(function(response) {
                        console.log('dd')
                        console.log(response)
                    });

                    return d.promise();
                }
            },

            fields: [
                { type: "control", width: 150,modeSwitchButton: false, editButton: false, deleteButton: false ,
                    itemTemplate: function(value, item) {
                        var $result = jsGrid.fields.control.prototype.itemTemplate.apply(this, arguments);

                        var $customButton = $("<button>")
                            .html('Details').addClass('btn waves-effect waves-light amber darken-4')
                            .click(function(e) {
                                $window.location.href = app.host + 'buying/order/'+item.id;
                                e.stopPropagation();
                            });

                        return $result.add($customButton);
                    }
                },
                { name: "Factory", type: "text", width: 150 },
                { name: "Season", type: "text", width: 150 },
                { name: "Style", type: "text", width: 150 },
                { name: "Ref", type: "text", width: 150 },
                { name: "Color", type: "text", width: 150 },
                { name: "Gauge", type: "text", width: 150 },
                { name: "Yarn", type: "text", width: 150 },
                { name: "Ply", type: "text", width: 150 },
                { name: "KnittingPattern", type: "text", width: 150 },
                { name: "Trims", type: "text", width: 150 },
                { name: "Weight", type: "text", width: 150 },
                { name: "Customer", type: "text", width: 150 },
                { name: "PO", type: "text", width: 150 },
                { name: "Qty", type: "text", width: 150 },
                { name: "Sizing", type: "text", width: 150 },
                { name: "Price", type: "text", width: 150 },
                { name: "Accessories", type: "text", width: 150 },
                { name: "OverseasAcces", type: "text", width: 150 },
                { name: "Status(O/A)", type: "text", width: 150 },
                { name: "CareLabelComposition", type: "text", width: 150 },
                { name: "CA/RN", type: "text", width: 150 },
                { name: "HandOverDate", type: "text", width: 150 },
                { name: "HangTag", type: "text", width: 150 },
                { name: "Production", type: "text", width: 150 },
                { name: "Knitting", type: "text", width: 150 },
                { name: "Linking", type: "text", width: 150 },
                { name: "Finishing", type: "text", width: 150 },
                { name: "Packing", type: "text", width: 150 },
                { name: "SampleRequirment", type: "text", width: 150 },
                { name: "SampleStatus", type: "text", width: 150 },
                { name: "SampleDate", type: "text", width: 150 },
                { name: "ShippingRequirment", type: "text", width: 150 },
                { name: "ShippingStatus", type: "text", width: 150 },
                { name: "ShippingStatusDate", type: "text", width: 150 },
                { name: "ApprovedWeight", type: "text", width: 150 },
                { name: "ActualWeight", type: "text", width: 150 },
                { name: "ConfirmedPrice", type: "text", width: 150 },
                { name: "OrderValue", type: "text", width: 150 },
                { name: "InspectionDate", type: "text", width: 150 },
                { name: "HandedoverDate", type: "text", width: 150 },
                { name: "HandedoverQty", type: "text", width: 150 },
                { name: "CBM", type: "text", width: 150 },
                { name: "Mode", type: "text", width: 150 },
                { name: "Destination", type: "text", width: 150 },
                { name: "HBL/AWB", type: "text", width: 150 },
                { name: "M.Vsl/Flight", type: "text", width: 150 },
                { name: "ETD", type: "text", width: 150 },
                { name: "ETA", type: "text", width: 150 },
                { name: "MasterL/C", type: "text", width: 150 },
                { name: "Invoice", type: "text", width: 150 },
                { name: "InvoiceValue", type: "text", width: 150 },
                { name: "DocumentStatus", type: "text", width: 150 },
                { name: "TrackingNo", type: "text", width: 150 },
                { name: "DocumentSentDate", type: "text", width: 150 },
                { name: "Payment", type: "text", width: 150 },
                { name: "PaymentDate", type: "text", width: 150 },
                { name: "Remarks", type: "text", width: 150 }
            ]
        });
    }

    $scope.ordersSummery = function () {
        $http.get(app.host + 'buying/getOrdersSummery').then(function (result) {
            $scope.orders = result.data.orders_shipping_soon;
            $scope.recent_orders = result.data.recent_orders;
            $scope.inactive_orders = result.data.inactive_orders;
            $scope.recent_shipments = result.data.recent_shipments;
            $scope.suppliers = result.data.suppliers;
        });
    }

})

angular.module('myApp').controller('ColorController', function($scope, $http, $window){

    $scope.add_color = function() {

        var data = $.param({
            color_name: $scope.color.color_name,
        });
        var config = {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        };
        $http.post(app.host + 'buying/color/store', data, config).success(function (response, status) {
            Materialize.toast('<span>Operation has been successfull.</span>', 1500);
            $scope.color = {};
            window.location.href = app.host + 'buying/color/'+response;
        }).error(function (result, status) {
            console.log(result)
        });

    }
    $scope.getColorData = function()
    {
        $("#jsGrid-basic").jsGrid({
            height: "90%",
            width: "100%",

            filtering: true,
            editing: true,
            sorting: true,
            paging: true,
            autoload: true,
            deleteConfirm: function(item) {
                return "The client \"" + item.Name + "\" will be removed. Are you sure?";
            },
            pageSize: 15,
            pageButtonCount: 5,

            controller: {
                loadData: function() {
                    var d = $.Deferred();

                    $.ajax({
                        url: app.host + 'buying/colorsList',
                        dataType: "json"
                    }).done(function(response) {
                        console.log('-----')
                        $scope.colors = response.colors;
                        console.log($scope.colors)
                        d.resolve($scope.colors);
                    }).error(function(response) {
                        console.log('dd')
                        console.log(response)
                    });

                    return d.promise();
                }
            },

            fields: [
                { type: "control", width: 100,modeSwitchButton: false, editButton: false, deleteButton: false ,
                    itemTemplate: function(value, item) {
                        var $result = jsGrid.fields.control.prototype.itemTemplate.apply(this, arguments);

                        var $customButton = $("<button>")
                            .html('<i class="large mdi-image-remove-red-eye"></i>').addClass('waves-effect waves-red btn')
                            .click(function(e) {
                                $window.location.href = app.host + 'buying/order/'+item.id;
                                e.stopPropagation();
                            });

                        return $result.add($customButton);
                    }
                },
                { name: "Color", type: "text", width: 150 },
                { name: "Session", type: "text", width: 150 },
                { name: "RD Card DT", type: "text", width: 150 },
                { name: "L/Dip Req DT", type: "text", width: 150 },
                { name: "Rcvd DT", type: "text", width: 150 },
                { name: "Sub DT", type: "text", width: 150 },
                { name: "App DT", type: "text", width: 150 },
                { name: "Rej DT", type: "text", width: 150 },
                { name: "Re L/D Rcvd DT", type: "text", width: 150 },
                { name: "Re Sub DT", type: "text", width: 150 },
                { name: "RS No", type: "text", width: 150 },
                { name: "Card", type: "text", width: 150 },
                { name: "Shade", type: "text", width: 150 },
                { name: "Status", type: "text", width: 150 },
                { name: "Remarks", type: "text", width: 150 }
            ]
        });
    }

})

angular.module('myApp').controller('CalendarController', function($scope, $http, $window){

    $scope.loadCalendar = function (id) {
        $http.get(app.host + 'dashboard/loadEvents/'+id).then(function (result, events) {
            console.log(result)
            var currentdate = new Date(); 
            events = result.data.events;
            var month = currentdate.getMonth()+1;
            if(month < 0)
                month = "0"+currentdate.getMonth();
            else 
                month = currentdate.getMonth()+1

            var day = currentdate.getDate();
            if(day < 0)
                day = "0"+currentdate.getDate();
            else 
                day = currentdate.getDate()

            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: currentdate.getFullYear()+"-"+month+"-"+day,
                editable: true,
                droppable: true, // this allows things to be dropped onto the calendar
                eventLimit: true, // allow "more" link when too many events
                events: events,

            });

        });
    }
});

angular.module('myApp').controller('HrmController', function($scope, $http, $window){
    $http.get(app.host + 'hrm/employeesList').then(function (result) {
        $scope.employees = result.data.employees;
    });
    $scope.add_employee = function(){
        data = new FormData($("#myForm")[0]);
        var data = $.param({
            name: $scope.employee.name,
            emp_role: $scope.employee.emp_role,
            email: $scope.employee.email,
            password: $scope.employee.password,
        });
        var config = {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        };
        $http.post(app.host + 'hrm/employee/add', data, config).success(function (response, status) {
            Materialize.toast('<span>Operation has been successfull.</span>', 1500);
            $scope.employee = {};
            window.location.href = app.host + 'hrm/employees/';
            console.log(response)
        }).error(function (result, status) {
        });
    }
});
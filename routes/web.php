<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['middlewere' => 'web'], function(){
    Route::get('', ['uses' => 'LoginController@index', 'as' => 'login']);
    Route::get('login', ['uses' => 'LoginController@index', 'as' => 'login']);
    Route::get('logout', function(){
        Auth::logout();
        return redirect('login');
    });
    Route::post ('process-login', ['uses' => 'LoginController@processLogin', 'as' => 'Process Login']);

    Route::get('dashboard', ['middleware' => 'auth', 'uses' => 'DashboardController@index', 'as' => 'Dashboard']);
    Route::get('yarns', ['middleware' => 'auth', 'uses' => 'YarnController@index', 'as' => 'Yarns Details']);
    Route::get('settings', ['middleware' => 'auth', 'uses' => 'SettingsController@index', 'as' => 'buying_ordrer']);
    Route::get('buying/orders', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@index', 'as' => 'Orders']);
    Route::get('buying/colors', ['middleware' => 'auth', 'uses' => 'ColorsController@index', 'as' => 'colors']);
    Route::get('buying/color/{id}', ['middleware' => 'auth', 'uses' => 'ColorsController@getColorDetails', 'as' => 'colors']);
    Route::get('buying/colorsList', ['middleware' => 'auth', 'uses' => 'ColorsController@getColorsList', 'as' => 'colors_list']);
    Route::get('buying/order/{id}', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@getOrderDetails', 'as' => 'Order Details']);
    Route::get('buying/order/delete/{id}', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@deleteOrder', 'as' => 'Order Details']);
    Route::get('report/orders', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@getOrderReport', 'as' => 'Order Details']);
    Route::get('buying/order/pricechart/{id}', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@loadPriceChart', 'as' => 'price_chart']);
    Route::get('buying/ordersList', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@ordersList', 'as' => 'buying_ordrers_list']);
    Route::get('buying/order/price/confirm/{order_id}/{supplier_id}/{price}', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@confirmPrice', 'as' => 'buying_ordrers_list']);
    Route::get('buying/getOrdersSummery', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@getOrdersSummery', 'as' => 'orders_summery']);
    Route::get('buying/getSummery/{id}', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@getSummery', 'as' => 'summery']);
    Route::get('yarn/get/{id}', ['middleware' => 'auth', 'uses' => 'YarnController@getYarnDetails', 'as' => 'summery']);
    Route::get('yarnDetails/get/{page}/{id}', ['middleware' => 'auth', 'uses' => 'YarnController@getYarnPlyDetails', 'as' => 'summery']);
    Route::get('download/yarnDetails', ['middleware' => 'auth', 'uses' => 'YarnController@downloadYarnDetails', 'as' => 'summery']);
    Route::post('buying/orders/store', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@storeOrders', 'as' => 'Orders']);
    Route::post('production/yarn/add', ['middleware' => 'auth', 'uses' => 'YarnController@addYarn', 'as' => 'Orders']);
    Route::post('production/yarn/addDetails', ['middleware' => 'auth', 'uses' => 'YarnController@addYarnDetails', 'as' => 'Orders']);
    Route::post('settings/documents_type/add', ['middleware' => 'auth', 'uses' => 'SettingsController@addDocumentType', 'as' => 'Orders']);
    Route::post('settings/size/add', ['middleware' => 'auth', 'uses' => 'SettingsController@addSize', 'as' => 'Orders']);
    Route::get('settings/remove/size/{size_id}', ['middleware' => 'auth', 'uses' => 'SettingsController@removeSize', 'as' => 'Orders']);
    Route::get('settings/remove/doctype/{doctype_id}', ['middleware' => 'auth', 'uses' => 'SettingsController@removeDocType', 'as' => 'Orders']);
    Route::post('buying/color/store', ['middleware' => 'auth', 'uses' => 'ColorsController@storeColor', 'as' => 'store_color']);
    Route::post('buying/order/pricechart/save', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@savePriceChart', 'as' => 'price_chart']);
    Route::post('buying/buyers/store', ['middleware' => 'auth', 'uses' => 'BuyersController@storeBuyer', 'as' => 'Buyer']);
    Route::post('buying/suppliers/store', ['middleware' => 'auth', 'uses' => 'SuppliersController@storeSupplier', 'as' => 'Supplier']);
    Route::post('buying/order/update', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@updateOrder', 'as' => 'Orders']);
    Route::post('buying/color/update', ['middleware' => 'auth', 'uses' => 'ColorsController@updateColor', 'as' => 'Color']);
    Route::post('buying/buyer/update', ['middleware' => 'auth', 'uses' => 'BuyersController@updateBuyer', 'as' => 'Buyers']);
    Route::post('buying/supplier/update', ['middleware' => 'auth', 'uses' => 'SuppliersController@updateSupplier', 'as' => 'Suppliers']);
    Route::post('buying/order/uploadFiles', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@uploadFiles', 'as' => 'Orders Documents']);
    Route::get('buying/buyers', ['middleware' => 'auth', 'uses' => 'BuyersController@viewBuyersList', 'as' => 'Buyers']);
    Route::get('buying/suppliers', ['middleware' => 'auth', 'uses' => 'SuppliersController@viewSuppliersList', 'as' => 'Suppliers']);
    Route::get('buying/getbuyersList', ['middleware' => 'auth', 'uses' => 'BuyersController@getbuyersList', 'as' => 'Buyers']);
    Route::get('buying/buyer/{id}', ['middleware' => 'auth', 'uses' => 'BuyersController@getBuyerDetails', 'as' => 'Buyer Details']);
    Route::get('buying/supplier/{id}', ['middleware' => 'auth', 'uses' => 'SuppliersController@getSupplierDetails', 'as' => 'Supplier Details']);


    Route::get('hrm/employees', ['middleware' => 'auth', 'uses' => 'EmployeesController@viewEmployeesList', 'as' => 'employees']);
    Route::get('hrm/employeesList', ['middleware' => 'auth', 'uses' => 'EmployeesController@getemployeesList', 'as' => 'employees']);
    Route::post('hrm/employee/add', ['middleware' => 'auth', 'uses' => 'EmployeesController@storeEmployee', 'as' => 'add_employee']);
    Route::get('hrm/employee/{id}', ['middleware' => 'auth', 'uses' => 'EmployeesController@viewEmployeeDetails', 'as' => 'view_employee']);
    Route::post('hrm/employee/update', ['middleware' => 'auth', 'uses' => 'EmployeesController@updateEmployeeDetails', 'as' => 'update_employee']);


    Route::get('dashboard/calendar/{id}', ['middleware' => 'auth', 'uses' => 'CalendarController@viewCalendar', 'as' => 'calendar']);
    Route::get('dashboard/loadEvents/{id}', ['middleware' => 'auth', 'uses' => 'CalendarController@loadEvents', 'as' => 'loadEvents']);
    Route::post('dashboard/event/add', ['middleware' => 'auth', 'uses' => 'CalendarController@addEvent', 'as' => 'addEvents']);
    Route::get('dashboard/event/{id}/{ref}', ['middleware' => 'auth', 'uses' => 'CalendarController@viewEventDetails', 'as' => 'Event']);
    Route::get('dashboard/eventFlag/{evt_ref}/{user_id}/{flag}', ['middleware' => 'auth', 'uses' => 'CalendarController@changeEventFlag', 'as' => 'Event']);
    Route::get('order/update/size/qty/{order_id}/{color_id}/{qty}/{order_size_id}', ['middleware' => 'auth', 'uses' => 'BuyingOrderController@updateSizeQty', 'as' => 'Event']);
    Route::get('order/size/{type?}/{size_id}/{val}', ['middleware' => 'auth', 'uses' => 'SettingsController@updateSizeOrder', 'as' => 'Event']);


});

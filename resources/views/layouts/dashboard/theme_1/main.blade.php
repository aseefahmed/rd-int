<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="description" content="Materialize is a Material Design Admin Template,It's modern, responsive and based on Material Design by Google. ">
    <meta name="keywords" content="materialize, admin template, dashboard template, flat admin template, responsive admin template,">
    <title>RD Int - Dashboard</title>
    <!-- Favicons-->
    <link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">
    <!-- CORE CSS-->
    <link href="{{ asset('public/css/dashboard.css') }}" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="{{ asset('public/js/plugins/ionRangeSlider/css/ion.rangeSlider.skinFlat.css') }}" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="{{ asset('public/js/plugins/jsgrid/css/jsgrid.min.css') }}" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="{{ asset('public/js/plugins/jsgrid/css/jsgrid-theme.min.css') }}" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="{{ asset('public/js/plugins/fullcalendar/css/fullcalendar.min.css') }}" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="{{ asset('public/css/datetimepicker.css') }}" type="text/css" rel="stylesheet" media="screen,projection">
</head>
<body id="layouts-horizontal" ng-app="myApp">

<!-- Start Page Loading -->
{{-- <div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div> --}}
<!-- End Page Loading -->


<!-- //////////////////////////////////////////////////////////////////////////// -->

<!-- START HEADER -->
<header id="header" class="page-topbar">
    <!-- start header nav-->
    <div class="navbar-fixed">
        <nav class="navbar-color">
            <div class="nav-wrapper">
                <ul class="left">
                    <li><h1 class="logo-wrapper"><a href="{{url('dashboard')}}" class="brand-logo darken-1"><img src="{{ asset('public/images/logo.png') }}" height="50px" alt="materialize logo"></a> <span class="logo-text">RD International</span></h1></li>
                </ul>
                <div class="header-search-wrapper hide-on-med-and-down">
                    <i class="mdi-action-search"></i>
                    <input type="text" name="Search" class="header-search-input z-depth-2" placeholder="Explore Materialize"/>
                </div>
                <ul class="right hide-on-med-and-down">
                    
                    <li><a id="goBack" class="waves-effect waves-block waves-light"><i class="mdi-content-backspace"></i></a>
                    </li>
                    <li><a href="javascript:void(0);" class="waves-effect waves-block waves-light toggle-fullscreen"><i class="mdi-action-settings-overscan"></i></a>
                    </li>
                    <li><a href="javascript:void(0);" class="waves-effect waves-block waves-light notification-button" data-activates="notifications-dropdown"><i class="mdi-social-notifications"><small class="notification-badge">5</small></i>

                        </a>
                    </li>
                    <li><a href="#" data-activates="chat-out" class="waves-effect waves-block waves-light chat-collapse"><i class="mdi-communication-chat"></i></a>
                    </li>
                </ul>
                <!-- translation-button -->
                <ul id="translation-dropdown" class="dropdown-content">
                    <li>
                        <a href="#!"><img src="images/flag-icons/United-States.png" alt="English" />  <span class="language-select">English</span></a>
                    </li>
                    <li>
                        <a href="#!"><img src="images/flag-icons/France.png" alt="French" />  <span class="language-select">French</span></a>
                    </li>
                    <li>
                        <a href="#!"><img src="images/flag-icons/China.png" alt="Chinese" />  <span class="language-select">Chinese</span></a>
                    </li>
                    <li>
                        <a href="#!"><img src="images/flag-icons/Germany.png" alt="German" />  <span class="language-select">German</span></a>
                    </li>

                </ul>
                <!-- notifications-dropdown -->
                <ul id="notifications-dropdown" class="dropdown-content">
                    <li>
                        <h5>NOTIFICATIONS <span class="new badge">5</span></h5>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#!"><i class="mdi-action-add-shopping-cart"></i> A new order has been placed!</a>
                        <time class="media-meta" datetime="2015-06-12T20:50:48+08:00">2 hours ago</time>
                    </li>
                    <li>
                        <a href="#!"><i class="mdi-action-stars"></i> Completed the task</a>
                        <time class="media-meta" datetime="2015-06-12T20:50:48+08:00">3 days ago</time>
                    </li>
                    <li>
                        <a href="#!"><i class="mdi-action-settings"></i> Settings updated</a>
                        <time class="media-meta" datetime="2015-06-12T20:50:48+08:00">4 days ago</time>
                    </li>
                    <li>
                        <a href="#!"><i class="mdi-editor-insert-invitation"></i> Director meeting started</a>
                        <time class="media-meta" datetime="2015-06-12T20:50:48+08:00">6 days ago</time>
                    </li>
                    <li>
                        <a href="#!"><i class="mdi-action-trending-up"></i> Generate monthly report</a>
                        <time class="media-meta" datetime="2015-06-12T20:50:48+08:00">1 week ago</time>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- HORIZONTL NAV START-->
        <nav id="horizontal-nav" class="white hide-on-med-and-down">
            <div class="nav-wrapper">
                <ul id="ul-horizontal-nav" class="left hide-on-med-and-down">
                    <li>
                        <a href="index.html" class="cyan-text">
                            <i class="mdi-action-dashboard"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-menu cyan-text" href="#!" data-activates="CSSdropdown">
                            <i class="mdi-action-invert-colors"></i>
                            <span>HRM<i class="mdi-navigation-arrow-drop-down right"></i></span>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-menu cyan-text" href="#!" data-activates="UIElementsdropdown">
                            <i class="mdi-image-palette"></i>
                            <span>Production<i class="mdi-navigation-arrow-drop-down right"></i></span>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-menu cyan-text" href="{{ url('dashboard/calendar/'.Auth::user()->id) }}">
                            <i class="mdi-notification-event-note"></i>
                            <span>Calender</span>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-menu cyan-text" href="{{ url('settings') }}">
                            <i class="mdi-notification-event-note"></i>
                            <span>Settings</span>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-menu cyan-text" href="{{ url('logout') }}">
                            <i class="mdi-editor-insert-chart"></i>
                            <span>Logout</span>
                        </a>
                    </li>

                </ul>
            </div>
        </nav>

        <!-- CSSdropdown -->
        <ul id="CSSdropdown" class="dropdown-content dropdown-horizontal-list">
            <li><a href="{{ url('/hrm/employees') }}" class="cyan-text">Employees</a></li>
            <!-- <li><a href="css-shadow.html" class="cyan-text">Departments</a></li> -->
        </ul>

        <!-- UIElementsdropdown-->
        <ul id="UIElementsdropdown" class="dropdown-content dropdown-horizontal-list">
            <li><a href="{{ url('/buying/orders') }}" class="cyan-text">Orders</a></li>
            <li><a href="{{ url('/yarns') }}" class="cyan-text">Yarn Details</a></li>
            <li><a href="{{ url('/buying/colors') }}" class="cyan-text">Colors</a></li>
            <li><a href="{{ url('/buying/buyers') }}" class="cyan-text">Buyers</a></li>
            <li><a href="{{ url('/buying/suppliers') }}" class="cyan-text">Supplier</a></li>
        </ul>

        <!-- Tablesdropdown -->
        <ul id="Tablesdropdown" class="dropdown-content dropdown-horizontal-list">
            <li><a href="table-basic.html" class="cyan-text">Basic Tables</a></li>
            <li><a href="table-data.html" class="cyan-text">Data Tables</a></li>
        </ul>

        <!-- Formsdropdown -->
        <ul id="Formsdropdown" class="dropdown-content dropdown-horizontal-list">
            <li><a href="form-elements.html" class="cyan-text">Form Elements</a></li>
            <li><a href="form-layouts.html" class="cyan-text">Form Layouts</a></li>
        </ul>

        <!-- Pagesdropdown -->
        <ul id="Pagesdropdown" class="dropdown-content dropdown-horizontal-list">

            <li><a href="page-invoice.html" class="cyan-text">Invoice</a></li>
            <li><a href="page-404.html" class="cyan-text">404</a></li>
            <li><a href="page-500.html" class="cyan-text">500</a></li>
            <li><a href="page-blank.html" class="cyan-text">Blank</a></li>
        </ul>

        <!-- eCommers -->
        <ul id="eCommersdropdown" class="dropdown-content dropdown-horizontal-list">
            <li><a href="eCommerce-products-page.html"  class="cyan-text">eCommerce Products </a></li>
            <li><a href="eCommerce-pricing.html"  class="cyan-text">Pricing Page</a></li>
            <li><a href="eCommerce-invoice.html"  class="cyan-text">Invoice</a></li>
        </ul>

        <!-- Mediasdropdown -->
        <ul id="Mediasdropdown" class="dropdown-content dropdown-horizontal-list">
            <li><a href="media-gallary-page.html"  class="cyan-text">Gallary Page</a></li>
            <li><a href="media-hover-effects.html"  class="cyan-text">Image Hover Effects</a></li>
        </ul>

        <!-- Usersdropdown -->
        <ul id="Usersdropdown" class="dropdown-content dropdown-horizontal-list">
            <li><a href="user-profile-page.html"  class="cyan-text">User Profile</a></li>
            <li><a href="user-login.html"  class="cyan-text">Login</a></li>
            <li><a href="user-register.html" class="cyan-text">Register</a></li>
            <li><a href="user-forgot-password.html" class="cyan-text">Forgot Password</a></li>
            <li><a href="user-lock-screen.html" class="cyan-text">Lock Screen</a></li>
            <li><a href="user-sesssion-timeout.html" class="cyan-text">Session Timeout</a></li>
        </ul>

        <!-- Chartsdropdown -->
        <ul id="Chartsdropdown" class="dropdown-content dropdown-horizontal-list">
            <li><a href="charts-chartjs.html" class="cyan-text">Chart JS</a></li>
            <li><a href="charts-chartist.html" class="cyan-text">Chartist</a></li>
            <li><a href="charts-morris.html" class="cyan-text">Morris Charts</a></li>
            <li><a href="charts-xcharts.html" class="cyan-text">xCharts</a></li>
            <li><a href="charts-flotcharts.html" class="cyan-text">Flot Charts</a></li>
            <li><a href="charts-sparklines.html" class="cyan-text">Sparkline Charts</a></li>
        </ul>
        <!-- HORIZONTL NAV END-->



    </div>
    <!-- end header nav-->
</header>
<!-- END HEADER -->

<!-- //////////////////////////////////////////////////////////////////////////// -->

<!-- START MAIN -->
<div id="main">
    <!-- START WRAPPER -->
    <div class="wrapper">

        <!-- START LEFT SIDEBAR NAV-->
        <aside id="left-sidebar-nav hide-on-large-only">
            <ul id="slide-out" class="side-nav leftside-navigation ">
                <li class="user-details cyan darken-2">
                    <div class="row">
                        <div class="col col s4 m4 l4">
                            <img src="images/avatar.jpg" alt="" class="circle responsive-img valign profile-image">
                        </div>
                        <div class="col col s8 m8 l8">
                            <ul id="profile-dropdown" class="dropdown-content">
                                <li><a href="#"><i class="mdi-action-face-unlock"></i> Profile</a>
                                </li>
                                <li><a href="#"><i class="mdi-action-settings"></i> Settings</a>
                                </li>
                                <li><a href="#"><i class="mdi-communication-live-help"></i> Help</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="#"><i class="mdi-action-lock-outline"></i> Lock</a>
                                </li>
                                <li><a href="#"><i class="mdi-hardware-keyboard-tab"></i> Logout</a>
                                </li>
                            </ul>
                            <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown">John Doe<i class="mdi-navigation-arrow-drop-down right"></i></a>
                            <p class="user-roal">Administrator</p>
                        </div>
                    </div>
                </li>
                <li class="bold active"><a href="index.html" class="waves-effect waves-cyan"><i class="mdi-action-dashboard"></i> Dashboard</a>
                </li>
                <li class="bold"><a href="app-email.html" class="waves-effect waves-cyan"><i class="mdi-communication-email"></i> Mailbox <span class="new badge">4</span></a>
                </li>
                <li class="bold"><a href="app-calendar.html" class="waves-effect waves-cyan"><i class="mdi-editor-insert-invitation"></i> Calender</a>
                </li>
                <li class="no-padding">
                    <ul class="collapsible collapsible-accordion">
                        <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="mdi-action-invert-colors"></i> CSS</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="css-typography.html">Typography</a>
                                    </li>
                                    <li><a href="css-icons.html">Icons</a>
                                    </li>
                                    <li><a href="css-shadow.html">Shadow</a>
                                    </li>
                                    <li><a href="css-media.html">Media</a>
                                    </li>
                                    <li><a href="css-sass.html">Sass</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-image-palette"></i> UI Elements</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="ui-buttons.html">Buttons</a>
                                    </li>
                                    <li><a href="ui-badges.html">Badges</a>
                                    </li>
                                    <li><a href="ui-cards.html">Cards</a>
                                    </li>
                                    <li><a href="ui-collections.html">Collections</a>
                                    </li>
                                    <li><a href="ui-accordions.html">Accordian</a>
                                    </li>
                                    <li><a href="ui-tabs.html">Tabs</a>
                                    </li>
                                    <li><a href="ui-navbar.html">Navbar</a>
                                    </li>
                                    <li><a href="ui-pagination.html">Pagination</a>
                                    </li>
                                    <li><a href="ui-preloader.html">Preloader</a>
                                    </li>
                                    <li><a href="ui-modals.html">Modals</a>
                                    </li>
                                    <li><a href="ui-media.html">Media</a>
                                    </li>
                                    <li><a href="ui-toasts.html">Toasts</a>
                                    </li>
                                    <li><a href="ui-tooltip.html">Tooltip</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="bold"><a href="app-widget.html" class="waves-effect waves-cyan"><i class="mdi-device-now-widgets"></i> Widgets <span class="new badge"></span></a>
                        </li>
                        <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-editor-border-all"></i> Tables</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="table-basic.html">Basic Tables</a>
                                    </li>
                                    <li><a href="table-data.html">Data Tables</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-editor-insert-comment"></i> Forms</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="form-elements.html">Form Elements</a>
                                    </li>
                                    <li><a href="form-layouts.html">Form Layouts</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-social-pages"></i> Pages</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="page-contact.html">Contact Page</a>
                                    </li>
                                    <li><a href="page-todo.html">ToDos</a>
                                    </li>
                                    <li><a href="page-blog-1.html">Blog Type 1</a>
                                    </li>
                                    <li><a href="page-blog-2.html">Blog Type 2</a>
                                    </li>
                                    <li><a href="page-404.html">404</a>
                                    </li>
                                    <li><a href="page-500.html">500</a>
                                    </li>
                                    <li><a href="page-blank.html">Blank</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-action-shopping-cart"></i> eCommers</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="eCommerce-products-page.html">Products Page</a>
                                    </li>
                                    <li><a href="eCommerce-pricing.html">Pricing Table</a>
                                    </li>
                                    <li><a href="eCommerce-invoice.html">Invoice</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-image-image"></i> Medias</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="media-gallary-page.html">Gallery Page</a>
                                    </li>
                                    <li><a href="media-hover-effects.html">Image Hover Effects</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-action-account-circle"></i> User</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="user-profile-page.html">User Profile</a>
                                    </li>
                                    <li><a href="user-login.html">Login</a>
                                    </li>
                                    <li><a href="user-register.html">Register</a>
                                    </li>
                                    <li><a href="user-forgot-password.html">Forgot Password</a>
                                    </li>
                                    <li><a href="user-lock-screen.html">Lock Screen</a>
                                    </li>
                                    <li><a href="user-session-time-out.html">Session Timeout</a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="mdi-editor-insert-chart"></i> Charts</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="charts-chartjs.html">Chart JS</a>
                                    </li>
                                    <li><a href="charts-chartist.html">Chartist</a>
                                    </li>
                                    <li><a href="charts-morris.html">Morris Charts</a>
                                    </li>
                                    <li><a href="charts-xcharts.html">xCharts</a>
                                    </li>
                                    <li><a href="charts-flotcharts.html">Flot Charts</a>
                                    </li>
                                    <li><a href="charts-sparklines.html">Sparkline Charts</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="li-hover"><div class="divider"></div></li>
                <li class="li-hover"><p class="ultra-small margin more-text">MORE</p></li>
                <li><a href="css-grid.html"><i class="mdi-image-grid-on"></i> Grid</a>
                </li>
                <li><a href="css-color.html"><i class="mdi-editor-format-color-fill"></i> Color</a>
                </li>
                <li><a href="css-helpers.html"><i class="mdi-communication-live-help"></i> Helpers</a>
                </li>
                <li><a href="changelogs.html"><i class="mdi-action-swap-vert-circle"></i> Changelogs</a>
                </li>
                <li class="li-hover"><div class="divider"></div></li>
                <li class="li-hover"><p class="ultra-small margin more-text">Daily Sales</p></li>
                <li class="li-hover">
                    <div class="row">
                        <div class="col s12 m12 l12">
                            <div class="sample-chart-wrapper">
                                <div class="ct-chart ct-golden-section" id="ct2-chart"></div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only cyan"><i class="mdi-navigation-menu"></i></a>
        </aside>
        <!-- END LEFT SIDEBAR NAV-->

        <!-- //////////////////////////////////////////////////////////////////////////// -->

        <!-- START CONTENT -->
        <section id="content">

            <!--start container-->
            <div class="container">
                @yield('content')
            </div>
        </section>
        <!-- END CONTENT -->

        <!-- //////////////////////////////////////////////////////////////////////////// -->

        <!-- START RIGHT SIDEBAR NAV-->
        <aside id="right-sidebar-nav">
            <ul id="chat-out" class="side-nav rightside-navigation">
                <li class="li-hover">
                    <a href="#" data-activates="chat-out" class="chat-close-collapse right"><i class="mdi-navigation-close"></i></a>
                    <div id="right-search" class="row">
                        <form class="col s12">
                            <div class="input-field">
                                <i class="mdi-action-search prefix"></i>
                                <input id="icon_prefix" type="text" class="validate">
                                <label for="icon_prefix">Search</label>
                            </div>
                        </form>
                    </div>
                </li>
                <li class="li-hover">
                    <ul class="chat-collapsible" data-collapsible="expandable">
                        <li>
                            <div class="collapsible-header teal white-text active"><i class="mdi-social-whatshot"></i>Recent Activity</div>
                            <div class="collapsible-body recent-activity">
                                <div class="recent-activity-list chat-out-list row">
                                    <div class="col s3 recent-activity-list-icon"><i class="mdi-action-add-shopping-cart"></i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#">just now</a>
                                        <p>Jim Doe Purchased new equipments for zonal office.</p>
                                    </div>
                                </div>
                                <div class="recent-activity-list chat-out-list row">
                                    <div class="col s3 recent-activity-list-icon"><i class="mdi-device-airplanemode-on"></i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#">Yesterday</a>
                                        <p>Your Next flight for USA will be on 15th August 2015.</p>
                                    </div>
                                </div>
                                <div class="recent-activity-list chat-out-list row">
                                    <div class="col s3 recent-activity-list-icon"><i class="mdi-action-settings-voice"></i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#">5 Days Ago</a>
                                        <p>Natalya Parker Send you a voice mail for next conference.</p>
                                    </div>
                                </div>
                                <div class="recent-activity-list chat-out-list row">
                                    <div class="col s3 recent-activity-list-icon"><i class="mdi-action-store"></i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#">Last Week</a>
                                        <p>Jessy Jay open a new store at S.G Road.</p>
                                    </div>
                                </div>
                                <div class="recent-activity-list chat-out-list row">
                                    <div class="col s3 recent-activity-list-icon"><i class="mdi-action-settings-voice"></i>
                                    </div>
                                    <div class="col s9 recent-activity-list-text">
                                        <a href="#">5 Days Ago</a>
                                        <p>Natalya Parker Send you a voice mail for next conference.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="collapsible-header light-blue white-text active"><i class="mdi-editor-attach-money"></i>Sales Repoart</div>
                            <div class="collapsible-body sales-repoart">
                                <div class="sales-repoart-list  chat-out-list row">
                                    <div class="col s8">Target Salse</div>
                                    <div class="col s4"><span id="sales-line-1"></span>
                                    </div>
                                </div>
                                <div class="sales-repoart-list chat-out-list row">
                                    <div class="col s8">Payment Due</div>
                                    <div class="col s4"><span id="sales-bar-1"></span>
                                    </div>
                                </div>
                                <div class="sales-repoart-list chat-out-list row">
                                    <div class="col s8">Total Delivery</div>
                                    <div class="col s4"><span id="sales-line-2"></span>
                                    </div>
                                </div>
                                <div class="sales-repoart-list chat-out-list row">
                                    <div class="col s8">Total Progress</div>
                                    <div class="col s4"><span id="sales-bar-2"></span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="collapsible-header red white-text"><i class="mdi-action-stars"></i>Favorite Associates</div>
                            <div class="collapsible-body favorite-associates">
                                <div class="favorite-associate-list chat-out-list row">
                                    <div class="col s4"><img src="images/avatar.jpg" alt="" class="circle responsive-img online-user valign profile-image">
                                    </div>
                                    <div class="col s8">
                                        <p>Eileen Sideways</p>
                                        <p class="place">Los Angeles, CA</p>
                                    </div>
                                </div>
                                <div class="favorite-associate-list chat-out-list row">
                                    <div class="col s4"><img src="images/avatar.jpg" alt="" class="circle responsive-img online-user valign profile-image">
                                    </div>
                                    <div class="col s8">
                                        <p>Zaham Sindil</p>
                                        <p class="place">San Francisco, CA</p>
                                    </div>
                                </div>
                                <div class="favorite-associate-list chat-out-list row">
                                    <div class="col s4"><img src="images/avatar.jpg" alt="" class="circle responsive-img offline-user valign profile-image">
                                    </div>
                                    <div class="col s8">
                                        <p>Renov Leongal</p>
                                        <p class="place">Cebu City, Philippines</p>
                                    </div>
                                </div>
                                <div class="favorite-associate-list chat-out-list row">
                                    <div class="col s4"><img src="images/avatar.jpg" alt="" class="circle responsive-img online-user valign profile-image">
                                    </div>
                                    <div class="col s8">
                                        <p>Weno Carasbong</p>
                                        <p>Tokyo, Japan</p>
                                    </div>
                                </div>
                                <div class="favorite-associate-list chat-out-list row">
                                    <div class="col s4"><img src="images/avatar.jpg" alt="" class="circle responsive-img offline-user valign profile-image">
                                    </div>
                                    <div class="col s8">
                                        <p>Nusja Nawancali</p>
                                        <p class="place">Bangkok, Thailand</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </aside>
        <!-- LEFT RIGHT SIDEBAR NAV-->

    </div>
    <!-- END WRAPPER -->

</div>
<!-- END MAIN -->



<!-- //////////////////////////////////////////////////////////////////////////// -->

<!-- START FOOTER -->
<footer class="page-footer footer-fixed">
  <div class="footer-copyright">
    <div class="container">
      <span>RD International Ltd ©
        <script type="text/javascript">
          document.write(new Date().getFullYear());
        </script> All rights reserved.</span>
      
    </div>
  </div>
</footer>

<!-- END FOOTER -->


<!-- ================================================
Scripts
================================================ -->

<script type="text/javascript" src="{{ asset('public/js/dashboard.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/js/main.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/js/controllers/buying_orders.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/js/plugins/jsgrid/js/jsgrid.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/js/plugins/fileinput/js/fileinput.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/js/plugins/fileinput/js/fileinput.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/js/plugins/data-tables/js/jquery.dataTables.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/js/plugins/fullcalendar/lib/jquery-ui.custom.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/js/plugins/fullcalendar/lib/moment.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/js/plugins/fullcalendar/js/fullcalendar.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/js/datetimepicker.js') }}"></script>



<script>
    $(document).ready(function() {
        $('#edit_order').click(function(){
            order_id = $('#reference_id').val();
            formData = new FormData($("#edit_order_form")[0]);
            $.ajax({
                url: "{{ url('buying/order/update') }}",
                method: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    window.location.href = app.host + 'buying/order/'+order_id;
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        });
        /*if($('.select2js').length > 0){
            $('.select2js').select2();

        }*/
        $('.size_val').click(function(){
            if($(this).val() == 0){
               $(this).val('') 
            }
        })
        $('.size_val').blur(function(){
            if($(this).val() == ""){
               $(this).val(0) 
            }
            var order_id = $(this).attr('order_id');
            //var size = $(this).attr('size');
            var color_id = $(this).attr('color_id');
            var order_size_id = $(this).attr('order_size_id');
            var size_qty = $(this).val();
            
            $.ajax({
                url: "{{url('order/update/size/qty/')}}/"+order_id+'/'+color_id+'/'+size_qty+'/'+order_size_id,
                method: "GET",
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    //window.location.href = app.host + 'dashboard/calendar/'+user_id;
                }
            }).fail(function(result){
                console.log(result)
                //Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        })
        $('.size_val').blur(function(){
            var order_id = $(this).attr('order_id');
            //var size = $(this).attr('size');
            var color_id = $(this).attr('color_id');
            var order_size_id = $(this).attr('order_size_id');
            var size_qty = $(this).val();
            
            $.ajax({
                url: "{{url('order/update/size/qty/')}}/"+order_id+'/'+color_id+'/'+size_qty+'/'+order_size_id,
                method: "GET",
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    //window.location.href = app.host + 'dashboard/calendar/'+user_id;
                }
            }).fail(function(result){
                console.log(result)
                //Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        })
       
        $('#edit_color').click(function(){
            order_id = $('#color_id').val();
            formData = new FormData($("#edit_color_form")[0]);
            $.ajax({
                url: "{{ url('buying/color/update') }}",
                method: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                   // window.location.href = app.host + 'buying/color/'+order_id;
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        });
        $('.accept_evt_btn').click(function(){
            evt_ref = $(this).attr('evt_ref');
            user_id = $(this).attr('user_id');
            flag = $(this).attr('flag');

            $.ajax({
                url: "{{url('dashboard/eventFlag')}}/"+evt_ref+'/'+user_id+'/'+flag,
                method: "GET",
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    window.location.href = app.host + 'dashboard/calendar/'+user_id;
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        });
        $("#range_02").ionRangeSlider({
            min: 0,
            max: 100,
            from: $("#range_02").attr('progress')
        });
        $('.production_progress').change(function(){
            total_checked = $('.production_progress:checked').length;
            progress_percentage = (total_checked/4)*100;
            console.log(progress_percentage)
            $("#range_02").ionRangeSlider({
                min: 0,
                max: 100,
                from: 40
            });
        })
        $('#goBack').click(function(){
            window.history.back();
        })
        $('#edit_buyer').click(function(){
            formData = new FormData($("#edit_buyer_form")[0]);
            $.ajax({
                url: "{{ url('buying/buyer/update') }}",
                method: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                }
            }).fail(function(result){
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        });

        $('#edit_supplier').click(function(){
            formData = new FormData($("#edit_supplier_form")[0]);
            $.ajax({
                url: "{{ url('buying/supplier/update') }}",
                method: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        });

        $('#edit_employee').click(function(){
            emp_id = $('#emp_id').val();
            formData = new FormData($("#edit_employee_form")[0]);
            $.ajax({
                url: "{{ url('hrm/employee/update') }}",
                method: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    window.location.href = app.host + 'hrm/employee/'+emp_id;
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        });

        $('#upload_doc_type').change(function(){
            if($('#upload_doc_type').val() == 0){
                $('#new_doc_type').css('display', 'inline')
            }else{
                $('#new_doc_type').css('display', 'none')

            }
        })
        $('#user_add_btn').click(function(){
            formData = new FormData($("#myForm")[0]);
            $.ajax({
        url: "{{ url('hrm/employee/add') }}",
                method: "POST",
                data: formData,        
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    window.location.href = app.host + 'hrm/employees';
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        });

        $('#yarn_add_btn').click(function(){
            formData = new FormData($("#yarnForm")[0]);
            $.ajax({
                url: "{{ url('production/yarn/add') }}",
                method: "POST",
                data: formData,        
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    window.location.href = app.host + 'yarns';
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        });

        $('#yarn_details_add_btn').click(function(){
            formData = new FormData($("#yarnDetailsForm")[0]);
            $.ajax({
                url: "{{ url('production/yarn/addDetails') }}",
                method: "POST",
                data: formData,        
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    //window.location.href = app.host + 'yarns';
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        });

        $('.confirm_price_btn').click(function(){
            supplier_id = $(this).attr('supplier_id');
            price_id ='price_'+supplier_id;
            price = $('#'+price_id).val();
            orderid = $('#orderid').val();

            $.ajax({
                url: "{{ url('buying/order/price/confirm') }}/"+orderid+'/'+supplier_id+'/'+price,
                method: "GET",
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    window.location.href = app.host + 'buying/order/' + orderid;
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        })


        $('#yarn_code').change(function(){
            yarn_code = $(this).val();
            if(yarn_code == 0){
                $('#yarn_name').val("Choose Yarn Code");
            }

            $.ajax({
                url: "{{ url('yarn/get/') }}/"+yarn_code,
                method: "GET",
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    $('#yarn_name').val(result.yarn[0].yarn);
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        })


        $('#yarn_ref_details').change(function(){
            yarn_code = $(this).val();
            page = $(this).attr('page');

            if(yarn_code == 0){
                $('#yarn_name').val("Choose Yarn Code");
            }

            $.ajax({
                url: "{{ url('yarnDetails/get/') }}/"+page+'/'+yarn_code,
                method: "GET",
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result);
                           
                    $('#row1').css('display', 'block');
                    $('#row1').html(result);
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        })

        /*$(document).keyup(function(e) {
            switch(e.keyCode) {
              case 8 : window.history.back(); break;
              case 37 : window.history.back(); break;
            }
          });*/

        $('.add_doctype_btn').click(function(){

            formData = new FormData($("#settings_form")[0]);
            $.ajax({
                url: "{{ url('settings/documents_type/add') }}",
                method: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    window.location.href = "{{url('settings')}}";
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        })

        $('.size_sort_order').blur(function(){
            console.log()
            var size_id = $(this).attr('size_id');
            var size_sort_order = $(this).val();

            $.ajax({
                url: "{{url('order/size/order')}}/"+size_id+'/'+size_sort_order,
                method: "GET",
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    //window.location.href = app.host + 'dashboard/calendar/'+user_id;
                }
            }).fail(function(result){
                console.log(result)
                //Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        })
        $('.size_name').blur(function(){
            console.log()
            var size_id = $(this).attr('size_id');
            var size_name = $(this).val();

            $.ajax({
                url: "{{url('order/size/name')}}/"+size_id+'/'+size_name,
                method: "GET",
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    //window.location.href = app.host + 'dashboard/calendar/'+user_id;
                }
            }).fail(function(result){
                console.log(result)
                //Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        })
        $('.add_size_btn').click(function(){

            formData = new FormData($("#size_form")[0]);
            $.ajax({
                url: "{{ url('settings/size/add') }}",
                method: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfully done.</span>', 1500);
                    window.location.href = "{{url('settings')}}";
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        })
        $('#pricechart_save_btn').click(function(){
            formData = new FormData($("#myForm")[0]);
            order_id = $('#orderid').val();

            $.ajax({
                url: "{{ url('buying/order/pricechart/save') }}",
                method: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    window.location.href= app.host + 'buying/order/pricechart/' + order_id;
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        });

        $('#add_evt_btn').click(function(){
            emp_id = $('#emp_id').val();
            formData = new FormData($("#myForm")[0]);
            $.ajax({
                url: "{{ url('dashboard/event/add') }}",
                method: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                    window.location.href = app.host + 'dashboard/calendar/'+emp_id;
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
                window.location.href = app.host + 'dashboard/calendar/'+emp_id;
            });
        });
        $('.tooltipped').tooltip({delay: 50});
        $('.datetimepicker').datetimepicker({
            format:'Y-m-d    H:m:s',
        });
        $('.pick_color').change(function(){
                color = $('#pick_color').val();
            $('#color_div').css('background', color);
            $('#color_div').css('display', 'block');
        })
        $("#input_file").fileinput({
            showUpload: false,
            maxFileCount: 10,
            mainClass: "input-group-lg"
        });
        $('#file_upload').click(function(){
            order_id = $('#reference_id').val();
            formData = new FormData($("#edit_order_form")[0]);
            $.ajax({
                url: "{{ url('buying/order/uploadFiles') }}",
                method: "POST",
                data: formData,
                contentType: false,
                cache: false,
                processData:false,
                success: function(result){
                    window.location.href = app.host + 'buying/order/'+order_id;
                    console.log(result)
                    Materialize.toast('<span>Operation has been successfull.</span>', 1500);
                }
            }).fail(function(result){
                console.log(result)
                Materialize.toast('<span>Operation has been unsuccessfull.</span>', 1500);
            });
        })
        $('.datepicker').change(function(e){
            var date = new Date(e.target.value);
            var day = date.getDate();
            var monthIndex = date.getMonth()+1;
            var year = date.getFullYear();
            if(day<10)
                day = "0"+day
            if(monthIndex<10)
                monthIndex = "0"+monthIndex
            var new_date = year +"-" +monthIndex +"-" + day;
            $(this).val(new_date)
        })
        $('#data-table-simple').DataTable();
    })
</script>
<!-- jQuery Library -->
</body>
</html>
const elixir = require('laravel-elixir');

require('laravel-elixir-vue-2');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for your application as well as publishing vendor resources.
 |
 */

elixir(function(mix){
    mix.styles([
        'materialize.min.css',
        'custom.min.css',
        'style.min.css',
        'jquery.dataTables.min.css',
        'style-horizontal.css',
        'font-awesome.css',
        'ion.rangeSlider.css',
        'fileinput.css',
    ], 'public/css/dashboard.css');


    mix.scripts([
        'plugins/jquery-1.11.2.min.js',
        'materialize.min.js',
        'plugins/perfect-scrollbar/perfect-scrollbar.min.js',
        'plugins/sparkline/jquery.sparkline.min.js',
        'plugins/sparkline/sparkline-script.js',
        'plugins.min.js',
        'custom-script.js',
        'ion.rangeSlider.js',
        'angular.min.js',
    ], 'public/js/dashboard.js');

    mix.browserSync({
		port: 3005
	  });
});


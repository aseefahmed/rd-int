myApp = angular.module('myApp', []);

angular.module('myApp', []).config(function($interpolateProvider){
    $interpolateProvider.startSymbol('<%').endSymbol('%>');
});

var app = {};

app.host = 'http://localhost/';







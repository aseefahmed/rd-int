angular.module('myApp').controller('LoginController', function($scope, $http, $window){
	$scope.doLogin = function(){console.log($('#rememberme').val());
		var data = $.param({
            email: $scope.email,
            password: $scope.password,
            _token: document.getElementsByName('_token')[0].value,
            remember: document.getElementsByName('rememberme')[0].value,
        });
        var config = {
            headers : {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        };
        $http.post(app.host + 'process-login', data, config).success(function (result, status) {
            if(result == -1)
            {
                $scope.login_failed_alert = "Invalid username/password. Please try again."
            }
            else if(result == -2)
            {
                $scope.login_failed_alert = "Your account has not been activated yet. Please contact your administrator to activate your account."
            }
            else
            {
                console.log(result)
                $window.location.href = '../#/buying/orders';
            }            
        }).error(function (result, status) {
        	console.log(result+status)
            $scope.login_failed_alert = "Internal server error occurred. Please contact the administrator."
        });
	};
})
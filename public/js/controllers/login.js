angular.module('myApp').controller('LoginController', function($scope, $http, $window){
	$scope.doLogin = function(){
        $("#ajax_loader").css('display', 'inline');
       
		var data = $.param({
            email: $scope.email,
            password: $scope.password
        });
        var config = {
            headers : {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        };

        $http.post(app.host + 'process-login', data, config).success(function (result, status) {
            $("#ajax_loader").css('display', 'none');
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
                $window.location.href = app.host + 'buying/orders';
            }            
        }).error(function (result, status) {
        	console.log(result+status)
            $scope.login_failed_alert = "Internal server error occurred. Please contact the administrator."
        });
	};
})
/**
 * Created by zipon on 2016/9/24.
 */
var app=angular.module('myapp',[]);
	// app.config(function($routeProvider){
	// 	$routeProvider
	// 		.when('/index.jsp',{
	// 			templateUrl:'index.jsp'
	// 		})
	// 		.when('/movie.jsp',{
	// 			templateUrl:'movie.jsp'
	// 		})
	// 		.otherwise({
	// 			redirectTo:'/'
	// 		});
	// });

	app.controller('getFilms', function($scope, $http) {
		$http.get("/getFilms")
			.success(function(response) {$scope.names = response;});
	});


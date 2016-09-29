/**
 * Created by zipon on 2016/9/24.
 */
var app=angular.module('myapp',['ngRoute']);
	app.config(function($routeProvider){
		$routeProvider
			.when('/index.jsp',{
				templateUrl:'index.jsp'
			})
			.otherwise({
				redirectTo:'/'
			});
	});


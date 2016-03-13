/**
 * 
 */

var CityModule=angular.module("City",[]);
 
            CityModule.factory("CityRetriever",function($http){
                var City={};
 
                (function(){
                    $http.get('http://localhost:8090/SpringMVCAngularJS/jsonData').success(function(response){
                    	console.log("Response data : "+response.data);
                        City.names=response.data;
                    	/*
                                if(typeof data=='object'){
                                    console.log("Response data : "+data);
                                    City.names=data;
                                }
 
                           */ }).error(function(){
                                alert("Failed to access");
                            });
                })();
 
                return City;
            });
           /* 
            fetchAllUsers: function() {
                return $http.get('http://localhost:8080/Spring4MVCAngularJSExample/user/')
                        .then(
                                function(response){
                                    return response.data;
                                }, 
                                function(errResponse){
                                    console.error('Error while fetching users');
                                    return $q.reject(errResponse);
                                }
                        );
*/ 
            CityModule.controller("CityController",function($scope,CityRetriever){
                $scope.cities=CityRetriever;
                console.log('Hello Controller');
            });
myApp.config(function($routeProvider){
   
    $routeProvider
    
    .when('/cart',{
        templateUrl: 'pages/cart.html',
        controller: 'StoreController'
    });
   /* 
     .when('/:age',{
        templateUrl: 'pages/main.html',
        controller: 'routerCtlr'
    })
  
    .when('/forecast',{
        templateUrl: 'pages/forecast.html',
        controller: 'forecastController'
    })
    
    .when('/forecast/:days',{
        templateUrl: 'pages/forecast.html',
        controller: 'forecastController'
    })
     */ 
});







//Controllers
myApp.controller('StoreController',['$scope','$location','$log','$routeParams',function($scope,$location,$log,$routeParams) {
   // $scope.cartSize = 6;
  
    
 /*   $scope.submit = function(){
        $location.path("/forecast");
    };*/
}] );

myApp.controller('HomeController',['$scope','$location','$log','$routeParams',function($scope,$location,$log,$routeParams) {
    $scope.cartSize = 6;
  
    
 /*   $scope.submit = function(){
        $location.path("/forecast");
    };*/
}] );


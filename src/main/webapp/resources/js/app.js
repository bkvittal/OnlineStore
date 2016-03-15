/**
 * 
 */

'use strict';
 
var myApp = angular.module('myApp',['ngRoute','ngResource']);

myApp.config(function($routeProvider){
	   
    $routeProvider
    
    .when('/cart',{
        templateUrl: '/OnlineStore/cart',
        controller: 'StoreController'
    })
    
     .when('/cat/:type',{
        templateUrl: '/OnlineStore/cattype',
        controller: 'CategoryController'
    })
    
    .when('/signup',{
        templateUrl: '/OnlineStore/signup',
        controller: 'CustomerController'
    })
    
    .when('/signin',{
        templateUrl: '/OnlineStore/signin',
        controller: 'CustomerController'
    });
  
});

//Controllers
myApp.controller('StoreController',['$scope','$rootScope','$location','$log','$routeParams','CartService',function($scope,$rootScope,$location,$log,$routeParams,CartService) {
	//$rootScope.showTower = false;
	$scope.names = CartService.cart;
	//$scope.cartSize = $rootScope.cart.length;
	$rootScope.cartSize = CartService.cart.length;
	
	$scope.remCart = function(obj){
		var index = $scope.names.indexOf(obj);
		if (index > -1) {
			$rootScope.cart.splice(index, 1);
		}
		$rootScope.cartSize = $rootScope.cart.length;
	};
}] );

myApp.controller('CategoryController',['$scope','$rootScope','$location','$log','$routeParams','StoreService','CartService',function($scope,$rootScope,$location,$log,$routeParams,StoreService,CartService) {
	$rootScope.showTower = false;
	    $scope.type = $routeParams.type || 'pants';
	     /*if($scope.type == 'pants'){
	    $scope.names = [
	                    {name:'white',desc:'White Pant',imagef:'whitef',imageb:'whiteb',price:20},
	                    {name:'red',desc:'Red Pant',imagef:'redf',imageb:'redb',price:20},
	                    {name:'black',desc:'Black Pant',imagef:'blackf',imageb:'blackb',price:20}
	                ];
	    }else if($scope.type == 'shirts'){
	    $scope.names = [
	                    {name:'shell',desc:'Shell Shirt',imagef:'shellf',imageb:'shelleb',price:20},
	                    {name:'blouse',desc:'Blouse Shirt',imagef:'blousef',imageb:'blouseb',price:20},
	                    {name:'pintuck',desc:'Black Pintuck',imagef:'pintuckf',imageb:'pintuckb',price:20}
	                ];
	    }else if($scope.type == 'dresses'){
	    $scope.names = [
	                    {name:'sheath',desc:'Sheath Dress',imagef:'sheathf',imageb:'sheathb',price:20},
	                    {name:'lace',desc:'Lace Dress',imagef:'lacef',imageb:'laceb',price:20},
	                    {name:'flower',desc:'Flower Dress',imagef:'flowerf',imageb:'flowerb',price:20}
	                ];
	    }*/
	    $scope.names = [];
	    //var dt = [];
	 
	    $scope.fetchProductsByCat = function(){
            StoreService.fetchProductsByCat($scope.type)
                .then(
                             function(d) {
                                  $scope.names = d;
                             },
                              function(errResponse){
                                  console.error('Error while fetching Currencies');
                              }
                     );
        };
        $scope.fetchProductsByCat(); 
        
	    $scope.cart = [];
	    $scope.addtocart = function(name){
	    	CartService.addToCart(name);
	    	$rootScope.cart = angular.extend(CartService.cart, $rootScope.cart);
	    	$rootScope.cartSize = $rootScope.cart.length;
	    };
        
        //CartService.addToCart(name);
        
	   // $rootScope.cart = angular.extend(CartService.cart, $rootScope.cart);
	    //$scope.cartSize = $rootScope.cart.length;
	   // $rootScope.cartSize = $rootScope.cart.length;
	    
	 
}] );


myApp.controller('HomeController',['$scope','$rootScope','$location','$log','$routeParams','CartService',function($scope,$rootScope,$location,$log,$routeParams,CartService) {
    //$scope.cartSize = 6;
      
    $rootScope.image = 'tower';
    $rootScope.showTower = false;
  
    /*
   $scope.submit = function(){
        $location.path("/forecast");
    };*/
}] );

myApp.controller('CustomerController',['$scope','$rootScope','$location','$log','$routeParams','CustomerService',function($scope,$rootScope,$location,$log,$routeParams,CustomerService) {
    console.log('lgoge contlr');
	$scope.customer={
			id:null,
			firstName:'default',
			lastName:'default',
			email:'default',
			phoneNumber:'1234567890',
			userName:'default',
			passWord:'default',
			gender:'Select Gender'
				};
	$scope.createCustomer = function(){
		console.log('in Create Method');
		console.log($scope.customer);
		CustomerService.createCustomer($scope.customer)
            .then(
           function(){
        	   
           }, 
                    function(errResponse){
                         console.error('Error while creating User.');
                    } 
        );
};

}] );
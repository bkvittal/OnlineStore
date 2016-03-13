'use strict';
 
myApp.factory('StoreService', ['$http', '$q', function($http, $q){
    
    return {
         
            fetchProductsByCat: function(cat) {
            	console.log('loggedin factory');
                    return $http.get('http://localhost:8090/OnlineStore/products/'+cat)
                            .then(
                                    function(response){
                                    	
                                        return response.data;
                                    }, 
                                    function(errResponse){
                                        console.error('Error while fetching users');
                                        return $q.reject(errResponse);
                                    }
                            );
            },
             
            addToCart: function(product){
                    return $http.post('http://localhost:8090/OnlineStore/cart/', product)
                            .then(
                                    function(response){
                                        return response.data;
                                    }, 
                                    function(errResponse){
                                        console.error('Error while creating user');
                                        return $q.reject(errResponse);
                                    }
                            );
            },
         /*    
            updateUser: function(user, id){
                    return $http.put('http://localhost:8090/SpringMVCAngularJS/user/'+id, user)
                            .then(
                                    function(response){
                                        return response.data;
                                    }, 
                                    function(errResponse){
                                        console.error('Error while updating user');
                                        return $q.reject(errResponse);
                                    }
                            );
            },
            
          deleteUser: function(id){
                    return $http.delete('http://localhost:8090/SpringMVCAngularJS/user/'+id)
                            .then(
                                    function(response){
                                        return response.data;
                                    }, 
                                    function(errResponse){
                                        console.error('Error while deleting user');
                                        return $q.reject(errResponse);
                                    }
                            );
            } */
         
    };
 
}]);

myApp.service('CartService',function(){
    var self = this;
    self.cart = [];
    
    self.addToCart = function(name){
    	self.cart.push(name);
    };
    
    self.removeFromCart = function(objs,obj){
    	var index = $scope.objs.indexOf(obj);
		if (index > -1) {
			CartService.cart.splice(index, 1);
		}
    };
    
});
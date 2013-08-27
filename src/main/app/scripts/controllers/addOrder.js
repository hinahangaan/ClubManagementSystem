'use strict';

angular.module('cmsApp')
  .controller('AddorderCtrl', function ($scope, dialog) {

    $scope.table = dialog.options.tableName; 	

  	$scope.ladies = [ 'Akira', 'Ashley', 'Tiffany' ];
  	$scope.itemTypes = [ { name : 'SML', price : '40', showLady : 'false' }, 
  						 { name : 'SMB', price : '40', showLady : 'false' },  						
  						 { name : 'RH', price : '40', showLady : 'false' }, 
  						 { name : 'SML-LD-D', price : '300', showLady : 'true' },
  						 { name : 'SML-LD-S', price : '180', showLady : 'true' } ];

  	$scope.waiters = [ 'Ryan', 'Jo', 'Allan' ];
  	
  	$scope.order = {};
  	$scope.order.waiter = $scope.waiters[0];

  	var item = { type: $scope.itemTypes[0],  				
  			     price: '40', 
  			     qty: "1", 
  			     amount: "40"};

  	$scope.order.items = [item];  	

  	$scope.addItem = function () {
  		var itm = { type: $scope.itemTypes[0],  					
  			        price: '40', 
  			        qty: "1", 
  			        amount: "40"}
  		$scope.order.items.push(itm);
  	};

  	$scope.removeItem = function (index) {  		
  		$scope.order.items.splice(index, 1);  		
  	};

  	$scope.addOrder = function () {
	   dialog.close($scope.order);
	};
    
    $scope.close = function () {
	   dialog.close();
	};

  });

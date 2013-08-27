'use strict';

angular.module('cmsApp')
  .controller('AddorderCtrl', function ($scope, dialog) {

    $scope.table = dialog.options.tableName;

    $scope.orNumbers = [ '1111', '1112', '1113', '1114', '1115', '1116' ];

  	$scope.ladies = [ 'Akira', 'Ashley', 'Tiffany' ];
  	$scope.itemTypes = [ { name : 'SML', price : 40.00, showLady : 'false' }, 
  						 { name : 'SMB', price : 40.00, showLady : 'false' },  						
  						 { name : 'RH', price : 40.00, showLady : 'false' }, 
  						 { name : 'SML-LD-D', price : 300.00, showLady : 'true' },
  						 { name : 'SML-LD-S', price : 180.00, showLady : 'true' } ];

  	$scope.waiters = [ 'Ryan', 'Jo', 'Allan' ];
  	
  	$scope.order = {};   
  	$scope.order.waiter = $scope.waiters[0];

  	var item = { type: $scope.itemTypes[0],  				
  			     price: 40.00, 
  			     qty: 1, 
  			     amount: 40.00};

  	$scope.order.items = [item];
    $scope.order.total = item.price;  

    $scope.itemChanged = function (itm) {     
      itm.amount = itm.type.price * itm.qty;
      itm.price = itm.type.price;

      if(itm.type.showLady === 'false') {
        itm.lady = ''; 
      }

      this.calculateTotal();   
    };	

    $scope.calculateAmount = function (itm) {     
      itm.amount = itm.price * itm.qty;

      this.calculateTotal();       
    }; 

    $scope.calculateTotal = function () {

      $scope.order.total = 0;
      angular.forEach($scope.order.items, function(itm){
        $scope.order.total += itm.amount;       
      });      

    }

  	$scope.addItem = function () {
  		var itm = { type: $scope.itemTypes[0],  					
  			        price: 40.00, 
  			        qty: 1, 
  			        amount: 40.00}
  		$scope.order.items.push(itm);

      this.calculateTotal();
  	};

  	$scope.removeItem = function (index) {  		
  		$scope.order.items.splice(index, 1);

      this.calculateTotal();  		
  	};

  	$scope.addOrder = function () {
	   dialog.close($scope.order);
  	};
      
      $scope.close = function () {
  	   dialog.close();
  	};

  });

'use strict';

angular.module('cmsApp')
  .directive('tableUnit', function () {
    return {     
      templateUrl: 'views/directives/tableUnit.html',
      restrict: 'E',
      scope: {
        table: '='
      },
      controller: function($scope, $element, $attrs, $transclude, $dialog) { 

        $scope.opts = {
          backdrop: true,
          keyboard: true, 
          backdropClick: false,
          //dialogFade: true, 
          //backdropFade: true,                      
          templateUrl: 'views/directives/addOrder.html',
          controller: 'AddorderCtrl',
          tableName: $scope.table.name
        };

        $scope.openAddOrder = function () {

          var d = $dialog.dialog($scope.opts);
          d.open().then( function(order) {
            if(order)
            {
              angular.forEach(order.items, function(itm){
                $scope.table.currentCustomer.bill += itm.amount;       
              });  
            }
          });

        }

      },
      link: function postLink(scope, element, attrs) {

        //console.log(scope.table);
     
      }
    };
  });

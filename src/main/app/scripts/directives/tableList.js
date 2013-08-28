'use strict';

angular.module('cmsApp')
  .directive('tableList', function () {
    return {   
      templateUrl: 'views/directives/tableList.html',      
      restrict: 'E',
      controller: function ($scope, $element, $attrs, tableRepo) {
     
        tableRepo.query();

        $scope.tables = [];

        var table = { name: 'T1', vacant: 'true', currentCustomer: { id: 2, bill: 0.00, waiter: 'Allan'}, customers: [{ id: 1, bill: 40.00, waiter: 'Allan'}]};
        $scope.tables.push(table);

        for(var i = 2; i < 55; i++){
          table = { name: 'T' + i, vacant: 'false', currentCustomer: { id: 2, bill: 0.00, waiter: 'Allan'}, customers: [{ id: 1, bill: 40.00, waiter: 'Allan'}]};
          $scope.tables.push(table);
        }  

        $scope.vips = [];

        for(var i = 1; i < 6; i++){
          var vip = { name: 'V' + i, type: 'vip', vacant: 'false', currentCustomer: { id: 2, bill: 0.00, waiter: 'Allan'}, customers: [{ id: 1, bill: 40.00, waiter: 'Allan'}]};
          $scope.vips.push(vip);
        }  

      },
      link: function postLink(scope, element, attrs) {
        
      }
    };
  });

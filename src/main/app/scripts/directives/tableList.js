'use strict';

angular.module('cmsApp')
  .directive('tableList', function () {
    return {
      //template: '<div></div>',
      templateUrl: 'views/directives/tableList.html',      
      restrict: 'E',
      controller: function ($scope, $element, $attrs) {

        $scope.tables = [];

        var table = { name: 'T1', bill: 'P   0.00', waiter: '', vacant: 'true'};
        $scope.tables.push(table);

        for(var i = 2; i < 55; i++){
          table = { name: 'T' + i, bill: 'P 100.00', waiter: 'Ryan, Jo, Allan', vacant: 'false'};
          $scope.tables.push(table);
        }  

        $scope.vips = [];

        for(var i = 1; i < 6; i++){
          var vip = { name: 'V' + i, bill: 'P 100.00', waiter: 'Ryan', vacant: 'false', type: 'vip'};
          $scope.vips.push(vip);
        }      


      },
      link: function postLink(scope, element, attrs) {
        
      }
    };
  });

'use strict';

describe('Directive: tableList', function () {

  // load the directive's module
  beforeEach(module('cmsAppDev'));

  // load templates
  beforeEach(module('views/directives/tableList.html','views/directives/tableUnit.html'));

  var element,
    scope;

  beforeEach(inject(function ($rootScope, $compile) {
    
    scope = $rootScope.$new();    

    scope.tables = [
      { name: 'T-1'},
      { name: 'T-2'},
      { name: 'T-3'},
      { name: 'T-4'}
    ];

    element = angular.element('<table-list></table-list>'); 
    element = $compile(element)(scope);
    scope.$apply(); 
    
  }));

  it('should have a list of tables', function () {
     
      expect(element.find('#table-list table-unit').size()).toBe(scope.tables.length);
     
  });

  
});

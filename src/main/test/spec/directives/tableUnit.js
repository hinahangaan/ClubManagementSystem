'use strict';

describe('Directive: tableUnit', function () {

  // load the directive's module
  beforeEach(module('cmsApp'));

  // load templates
  beforeEach(module('views/directives/tableUnit.html'));

  var element,
    scope;

  beforeEach(inject(function ($rootScope, $compile) {

    scope = $rootScope.$new(); 
   
    scope.table = {
      name: 'T1'
    }

    element = angular.element('<table-unit table="table"></table-unit>'); 
    element = $compile(element)(scope);
    scope.$apply();   

  }));

  it('should display a table', function () {
    expect(element.find("#T1").size()).toBe(1);
  });

});

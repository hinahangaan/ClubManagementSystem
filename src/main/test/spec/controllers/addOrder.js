'use strict';

describe('Controller: AddorderCtrl', function () {

  // load the controller's module
  beforeEach(module('cmsApp'));

  var AddorderCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope, $dialog) {
    scope = $rootScope.$new();
    
    scope.opts = {
      tableName: "Mock-Table"
    };

    AddorderCtrl = $controller('AddorderCtrl', {
      $scope: scope,
      dialog: $dialog.dialog(scope.opts)
    });

  }));

  it('should have a default item upon open', function () {
    expect(scope.order.items.length).toBe(1);
  });

  it('Should be able to add item to scope', function () {
    var initialItemCount = scope.order.items.length;
    scope.addItem();
    expect(scope.order.items.length).toBeGreaterThan(initialItemCount);
  });

  it('Should be able to remove item from scope', function () {
    var initialItemCount = scope.order.items.length;
    scope.addItem();
    scope.removeItem(1);
    expect(scope.order.items.length).toBe(initialItemCount);
  });
 
});

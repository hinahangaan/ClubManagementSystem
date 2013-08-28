'use strict';

angular.module('cmsApp', ['ui','ui.bootstrap','ngResource'])
  .config(function ($routeProvider, $locationProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });

      //$locationProvider.html5Mode(true);
  });

  angular.module('cmsAppDev', ['cmsApp', 'ngMockE2E']).run( function ($httpBackend) {

    //$httpBackend.whenGET(/^ClubManagementSystem\//).passThrough();
    $httpBackend.whenGET(/^views\//).passThrough();
    $httpBackend.whenGET('tables').passThrough();
    
    $httpBackend.expectGET('tables').respond('');

  });

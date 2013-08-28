'use strict';

angular.module('cmsApp')
  .factory('tableRepo', function ($resource) {
   
    // Public API here
    return $resource('tables/:id', {id:'@id'});
  });

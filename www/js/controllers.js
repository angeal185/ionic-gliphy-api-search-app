angular.module('starter.controllers', [])

.controller('DashCtrl', function($scope) {})

.controller('SearchCtrl', function($scope, $http, Giphy) {

    $scope.search = {};
    $scope.search.term = 'cats';
    $scope.giphies = [];

    $scope.performSearch = function() {
        Giphy.search($scope.search.term).then(function(result) {
            $scope.giphies = result;
        });
    };
})


.controller('AboutCtrl', function($scope) {});

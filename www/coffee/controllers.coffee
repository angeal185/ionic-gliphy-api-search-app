angular.module('starter.controllers', []).controller('DashCtrl', ($scope) ->
).controller('SearchCtrl', ($scope, $http, Giphy) ->
  $scope.search = {}
  $scope.search.term = 'kittens'
  $scope.giphies = []

  $scope.performSearch = ->
    Giphy.search($scope.search.term).then (result) ->
      $scope.giphies = result
      return
    return

  return
).controller 'AboutCtrl', ($scope) ->
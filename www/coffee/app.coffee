angular.module('starter', [
  'ionic'
  'starter.controllers'
  'starter.services'
]).run(($ionicPlatform) ->
  $ionicPlatform.ready ->
    if window.cordova and window.cordova.plugins and window.cordova.plugins.Keyboard
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar true
      cordova.plugins.Keyboard.disableScroll true
    if window.StatusBar
      StatusBar.styleDefault()
    return
  return
).config ($stateProvider, $urlRouterProvider) ->
  $stateProvider.state('tab',
    url: '/tab'
    abstract: true
    templateUrl: 'templates/tabs.html').state('tab.dash',
    url: '/dash'
    views: 'tab-dash':
      templateUrl: 'templates/tab-dash.html'
      controller: 'DashCtrl').state('tab.search',
    url: '/search'
    views: 'tab-search':
      templateUrl: 'templates/tab-search.html'
      controller: 'SearchCtrl').state 'tab.about',
    url: '/about'
    views: 'tab-about':
      templateUrl: 'templates/tab-about.html'
      controller: 'AboutCtrl'
  $urlRouterProvider.otherwise '/tab/dash'
  return
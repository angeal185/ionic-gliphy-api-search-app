angular.module('starter.services', []).factory 'Giphy', ($http) ->
  { search: (term) ->
    term.replace ' ', '+'
    url = 'http://api.giphy.com/v1/gifs/search?api_key=7bd6b9766a4943e3893f5bd20821d1f8&q=' + term
    console.log url
    $http.get(url).then (result) ->
      result.data.data
 }
angular.module('starter.services', [])

.factory('Giphy', function($http) {
    return {
        search: function(term) {
            term.replace(' ', '+');
            var url = 'http://api.giphy.com/v1/gifs/search?api_key=7bd6b9766a4943e3893f5bd20821d1f8&q=' + term;

            console.log(url);

            return $http.get(url).then(function(result){
                return result.data.data;
            });
        }
    };
});
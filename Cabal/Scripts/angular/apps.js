
//declare a module
var cabalApp = angular.module("cabalApp", ['cabalAPI', 'ui.bootstrap']);

cabalApp.run(['$rootScope', '$window', '$http', function ($rootScope, $window, $http) {
    //add this so server side will recognise as ajax request
    $http.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

    $rootScope.alert = {
        type: 'danger',
        msg: 'There was an error while processing your request.',
        title: 'Oh Crap!',
        display: false
    }
}]);

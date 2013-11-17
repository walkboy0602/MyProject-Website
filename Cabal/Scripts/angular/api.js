//Tutorial of how to use Angular integrate with Web Form
//http://weblogs.asp.net/dwahlin/archive/2013/08/16/using-an-angularjs-factory-to-interact-with-a-restful-service.aspx

angular.module('cabalAPI', [])
    .factory('dataFactory', ['$http', function ($http) {

        return {
            register: function (data) {
                return $http.post('/api/user/register', data);
            },
            login: function (data) {
                return $http.post('/api/user/login', data);
            }
        }

        //dataFactory.getCustomers = function () {
        //    return $http.get(urlBase);
        //};

        //dataFactory.getCustomer = function (id) {
        //    return $http.get(urlBase + '/' + id);
        //};

        //dataFactory.insertCustomer = function (cust) {
        //    return $http.post(urlBase, cust);
        //};

        //dataFactory.updateCustomer = function (cust) {
        //    return $http.put(urlBase + '/' + cust.ID, cust)
        //};

        //dataFactory.deleteCustomer = function (id) {
        //    return $http.delete(urlBase + '/' + id);
        //};

        //dataFactory.getOrders = function (id) {
        //    return $http.get(urlBase + '/' + id + '/orders');
        //};


    }]);



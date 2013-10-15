
cabalApp.controller("RegisterController", ['$scope',
    function ($scope) {

        var validator = $("#formRegister").validate({
            debug:true,
            rules: {
                username: {
                    required: true,
                    minlength: 2
                },
                email:{
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                    minlength: 6
                },
                cPassword: {
                    required: true,
                    equalTo: "#password",
                    minlength: 6
                }
            },
            messages: {
                cPassword: " Password does not match."
            },
        });


        $scope.save = function () {
            if (validator.valid()) {
                console.log(validator.valid());
                $scope.alert = {
                    type: 'success',
                    msg: 'Welcome to Cabal Neverath World!',
                    title: 'Success!',
                    display: true
                }
            }
        }

        //$scope.alert = {
        //    type: 'success',
        //    msg: 'Welcome to Cabal Neverath World!',
        //    title: 'Success!',
        //    display: true
        //}

    }]);

//function RegisterController($scope) {

//    $scope.name = "123";

//    $scope.save = function () {
        
//        alert('s');
//    }

//}


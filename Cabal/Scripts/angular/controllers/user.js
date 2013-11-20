//Login User
cabalApp.controller("LoginController", ['$scope', 'dataFactory', '$route',
    function ($scope, dataFactory, $route) {

        var validator = $("#formLogin").validate({
            debug: true,
            rules: {
                username: {
                    required: true,
                },
                password: {
                    required: true,
                }
            }
        });

        $scope.save = function (form) {

            if (validator.valid()) {

                dataFactory.login(form)
                    .success(function (data){
                        $scope.alert = {
                            type: 'success',
                            msg: 'Logging success!',
                            display: true
                        }
                        window.location = "/home.aspx";
                    })
                    .error(function (data, status) {
                        if (status === 400) {
                            $scope.alert = {
                                type: 'warning',
                                msg: data.Message,
                                display: true
                            };
                        } else {
                            $scope.alert = {
                                type: 'danger',
                                title: 'Oh Crap!',
                                msg: 'There was an error while processing your request.',
                                display: true
                            };
                        }
                    });

                }
            }

    }]);

//Register Account
cabalApp.controller("RegisterController", ['$scope', 'dataFactory',
    function ($scope, dataFactory) {

        var validator = $("#formRegister").validate({
            debug:true,
            rules: {
                username: {
                    required: true,
                    minlength: 6
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
            }
        });


        $scope.save = function (form) {

            if (validator.valid()) {

                dataFactory.register(form)
                    .success(function (data) {
                        $scope.alert = {
                            type: 'success',
                            msg: 'Welcome to Cabal Neverath World!',
                            title: 'Success!',
                            display: true
                        }
                    })
                    .error(function (data, status) {
                        if (status === 400) {
                            $scope.alert = {
                                type: 'warning',
                                title: 'Opps - ',
                                msg: data.Message,
                                display: true
                            };
                        } else {
                            $scope.alert = {
                                type: 'danger',
                                title: 'Oh Crap!',
                                msg: 'There was an error while processing your request.',
                                display: true
                            };
                        }
                    });
            
            }
        }


    }]);





//xscope is an object that refers to the application model. It is an execution context for expressions.
//Scope is the glue between application controller and the view
var appController = Blog.controller('AppController', function ($scope, $rootScope, $location, GlobalService) {
    var failureCb = function (status) {
        console.log(status);
    };
    $scope.globals = GlobalService;

    $scope.initialize = function (is_authenticated) {
        $scope.globals.is_authenticated = is_authenticated;
    };
})
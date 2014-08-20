'use strict';

var Blog = angular.module("Blog", ["ui.bootstrap", "ngCookies","ngDragDrop"], function ($interpolateProvider) {
        $interpolateProvider.startSymbol("{[{");
        $interpolateProvider.endSymbol("}]}");
    }
);

Blog.run(function ($http, $cookies) {
    $http.defaults.headers.common['X-CSRFToken'] = $cookies['csrftoken'];
})

Blog.config(function ($routeProvider) {
    $routeProvider
        .when("/", {
            templateUrl: "static/js/app/views/test.html",
            controller: "FeedController",
            resolve: {
                posts: function (PostService) {
                    return PostService.list();
                },
              
                
               
            }
        })
        .when("/:id", {
            templateUrl: "static/js/app/views/test.html",
            controller: "PanelController",
            resolve: {
                posts: function (PostService) {
                    return PostService.list();
                },
                student: function ($route, StudentService) {
                	var studentId = $route.current.params.id;                	
                    return StudentService.get(studentId);
                },
                studentlist: function ( StudentService) {
                	
                    return StudentService.list();
                    
                },
                
               
            }
        })
        .otherwise({
            redirectTo: '/'
        })
})
app = angular.module 'fixApp', ['ngRoute']

app.config ["$routeProvider", ($routeProvider) ->

      $routeProvider
        .when "/login",
          templateUrl: "partials/login.html"
          controller: 'loginCtrl'
          controllerAs: 'login'

        .when "/calc",
          templateUrl: "partials/calc.html"
          controller: 'calcCtrl'
          controllerAs: 'calc'

        .otherwise
          redirectTo: "/login"
    ]
.run ($rootScope, $location) ->
  $rootScope.$on '$routeChangeStart', (event, next) ->
    if $rootScope.loggedUser is null
      if next.templateUrl isnt "partials/login.html"
        $location.path "/login"



app.controller "loginCtrl", ['$scope', '$location', '$rootScope', ($scope, $location, $rootScope) ->

  $scope.email = "admin@admin.ru"
  $scope.pass = "asdf"

  $scope.submit = ->
      $rootScope.loggedUser = "admin"
      $location.path "/calc"
      return
  return
]

app.controller "calcCtrl", ['$scope', '$location', '$rootScope', ($scope, $location, $rootScope) ->

]
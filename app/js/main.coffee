app = angular.module 'fixApp', ['ngRoute']

class loginCtrl
  constructor: ($scope, $location, $rootScope) ->
    @user = "admin"
    @loginError = ""
    $rootScope.loggedUser = null

    @click = ->
      console.log @pass
      if @user is "admin" and @pass is "asdf"
        console.log "haha"
        $rootScope.loggedUser = "admin"
        $location.path "/calc"
      else
        @loginError = "Введите admin/asdf"

class calcCtrl
  constructor: ($scope, $location, $rootScope) ->



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



app.controller "loginCtrl",['$scope', '$location', '$rootScope', loginCtrl ]

app.controller "calcCtrl",['$scope', '$location', '$rootScope', calcCtrl ]
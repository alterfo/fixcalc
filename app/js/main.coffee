
app = angular.module "fixApp", ["ngRoute"]

app.config( ["$routeProvider", ($routeProvider) ->

      $routeProvider
        .when "/login",
          templateUrl: "partials/login.html"
          controller: loginCtrl

        .otherwise
          redirectTo: "/login"
    ])


app.controller "loginCtrl",
  class loginCtrl


app.controller "calcCtrl",
  class calcCtrl









angular.bootstrap document, ["fixApp"]
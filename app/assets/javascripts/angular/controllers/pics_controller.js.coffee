@PicsController = @app.controller 'PicsController', ["$scope", "$http", ($scope, $http) ->
  $scope.pics = []

  loadPics = ->
    $http.get("/api/0/pics.json").success((data, status, headers, config) ->
      angular.forEach data, (value) ->
        $scope.pics.push value.pic
    )

  loadPics()
]

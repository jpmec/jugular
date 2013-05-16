@PicsController = @app.controller 'PicsController', ["$scope", "$http", ($scope, $http) ->
  $scope.pics = []
  $scope.selectedPic = null

  $scope.selectPic = (pic) ->
    $scope.selectedPic = pic

  $scope.isSelected = (pic) ->
    'active' if $scope.selectedPic == pic


  loadPics = ->
    $http.get("/api/0/pics.json").success((data, status, headers, config) ->
      angular.forEach data, (value) ->
        $scope.pics.push value
    )

  loadPics()
]

@PicsController = @app.controller 'PicsController', ["$scope", "$http", ($scope, $http) ->
  $scope.pics = []
  $scope.selectedPic = null
  $scope.hoverPic = null

  $scope.versusPic1 = null
  $scope.versusPic2 = null

  $scope.listOrder = 'score'

  $scope.selectPic = (pic) ->
    $scope.selectedPic = pic
    if (!$scope.versusPic1)
      $scope.versusPic1 = pic
    else if (!$scope.versusPic2)
      $scope.versusPic2 = pic
    else
      $scope.versusPic1 = pic
      $scope.versusPic2 = null

  $scope.hoverPic = (pic) ->
    $scope.hoverPic = pic

  $scope.isSelected = (pic) ->
    'active' if $scope.selectedPic == pic

  loadPics = ->
    $http.get("/api/0/pics.json").success((data, status, headers, config) ->
      angular.forEach data, (value) ->
        $scope.pics.push value
    )

  loadPics()
]

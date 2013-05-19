@PicsController = @app.controller 'PicsController', ["$scope", "$http", ($scope, $http) ->
  $scope.pics = []
  $scope.selectedPic = null
  $scope.hoverPic = null

  $scope.versusPic1 = null
  $scope.versusPic2 = null

  $scope.uploadPicTitle = ""
  $scope.uploadPicScore = ""

  $scope.listOrder = 'score'
  $scope.listDescending = 'true'

  $scope.hideSections = () ->
    $('#pic-about-container').slideUp()
    $('#pic-upload-container').slideUp()
    $('#pic-versus-container').slideUp()
    $('#pic-best-container').slideUp()
    $('#pic-list-container').slideUp()
    $('#pic-view-container').slideUp()
    $('#pic-edit-container').slideUp()

  $scope.showAbout = () ->
    $scope.hideSections()
    $('#pic-about-container').slideDown()

  $scope.showFindPic = () ->
    $scope.hideSections()
    $('#pic-list-container').slideDown()

  $scope.showVersus = () ->
    $scope.versusPic1 = null
    $scope.versusPic2 = null
    $scope.hideSections()
    $('#pic-versus-container').slideDown()

  $scope.versusPic1AndVersusPic2NotNull = () ->
    return ($scope.versusPic1 != null) && ($scope.versusPic2 != null)

  $scope.showUpload = () ->
    $scope.hideSections()
    $('#pic-upload-container').slideDown()

  $scope.showBest = () ->
    $scope.hideSections()
    $('#pic-best-container').slideDown()

  $scope.showView = () ->
    $scope.hideSections()
    $('#pic-view-container').slideDown()

  $scope.showEdit = () ->
    $scope.hideSections()
    $('#pic-edit-container').slideDown()

  $scope.selectPic = (pic) ->
    $scope.selectedPic = pic
    $scope.showEdit()

  $scope.clearVersus = () ->
    $scope.versusPic1 = null
    $scope.versusPic2 = null

  $scope.selectVersusPic = (pic) ->
    if (!$scope.versusPic1)
      $scope.versusPic1 = pic
    else if (!$scope.versusPic2 && ($scope.versusPic1 != pic))
      $scope.versusPic2 = pic
    else
      $scope.versusPic1 = pic
      $scope.versusPic2 = null

  $scope.hoverPic = (pic) ->
    $scope.hoverPic = pic

  $scope.isSelected = (pic) ->
    'active' if $scope.selectedPic == pic

  $scope.saveEdit = (pic) ->
    alert('save')

  $scope.cancelEdit = (pic) ->
    $scope.showView(pic)

  $scope.sortByTitle = () ->
    if ($scope.listOrder == 'title')
      $scope.listDescending = !$scope.listDescending
    else
      $scope.listOrder = 'title'

  $scope.sortByScore = () ->
    if ($scope.listOrder == 'score')
      $scope.listDescending = !$scope.listDescending
    else
      $scope.listOrder = 'score'

  loadPics = ->
    $http.get("/api/0/pics.json").success((data, status, headers, config) ->
      angular.forEach data, (value) ->
        $scope.pics.push value
    )

  loadPics()
]

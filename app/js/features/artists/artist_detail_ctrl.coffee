angular.module("ionicstarter")

# A simple controller that shows a tapped item's data
.controller "ArtistDetailCtrl", ($scope, $stateParams, ArtistService) ->
  $scope.artist = ArtistService.get($stateParams.artistId)

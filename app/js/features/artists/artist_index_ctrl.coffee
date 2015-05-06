angular.module("ionicstarter")

# A simple controller that fetches a list of data from a service
.controller "ArtistIndexCtrl", ($scope, ArtistService) ->
  $scope.artists = ArtistService.all()

angular.module("ionicstarter")

# A simple controller that fetches a list of data from a service
.controller "SongIndexCtrl", ($scope, SongService) ->
  $scope.songs = SongService.all()

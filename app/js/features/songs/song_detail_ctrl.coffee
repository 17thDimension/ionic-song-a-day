angular.module("ionicstarter")

# A simple controller that shows a tapped item's data
.controller "SongDetailCtrl", ($scope, $stateParams, SongService, $sce) ->
  console.log($stateParams)
  $scope.song = SongService.get($stateParams.songId)
  controller = $scope
  controller.state = null
  controller.API = null
  controller.currentVideo = 0

  controller.onPlayerReady = (API) ->
    controller.API = API
    return

  controller.onCompleteVideo = ($sce)->
    controller.isCompleted = true
    controller.currentVideo++
    if controller.currentVideo >= controller.videos.length
      controller.currentVideo = 0
    controller.setVideo controller.currentVideo
    return
  controller.videos = [
    { sources: [ $scope.song.media ]}
  ]
  controller.config =
    preload: 'none'
    autoHide: false
    autoHideTime: 3000
    autoPlay: true
    sources: controller.videos[0].sources
    plugins: poster: 'http://www.videogular.com/assets/images/videogular.png'

  controller.setVideo = (index) ->
    controller.API.stop()
    controller.currentVideo = index
    controller.config.sources = controller.videos[index].sources
    $timeout controller.API.play.bind(controller.API), 100
    return

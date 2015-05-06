angular.module("ionicstarter")

.config ($stateProvider, $urlRouterProvider) ->

  # Ionic uses AngularUI Router which uses the concept of states
  # Learn more here: https://github.com/angular-ui/ui-router
  # Set up the various states which the app can be in.
  $stateProvider

  .state "tab",
    url: "/tab"
    abstract: true
    templateUrl: "templates/tabs.html"

  .state "tab.account-dashboard",
    url: "/account"
    views:
      "account-tab":
        templateUrl: "templates/account-dashboard.html"
        controller: "AccountDashboardCtrl"


  .state "tab.song-index",
    url: "/songs"
    views:
      "songs-tab":
        templateUrl: "templates/song-index.html"
        controller: "SongIndexCtrl"

  .state "tab.song-detail",
    url: "/song/:songId"
    views:
      "songs-tab":
        templateUrl: "templates/song-detail.html"
        controller: "SongDetailCtrl"

  .state "tab.artists",
    url: "/artists"
    views:
      "artists-tab":
        templateUrl: "templates/artist-index.html"
        controller: "ArtistIndexCtrl"

  .state "tab.artist",
    url: "/artist/:artistId"
    views:
      "artists-tab":
        templateUrl: "templates/artist-detail.html"
        controller: "ArtistDetailCtrl"

  .state "tab.mission",
    url: "/mission"
    views:
      "mission-tab":
        templateUrl: "templates/mission.html"


  # if none of the above states are matched, use this as the fallback
  $urlRouterProvider.otherwise "/tab/mission"

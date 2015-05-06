# Initialize angular's app.

app = angular.module(GLOBALS.ANGULAR_APP_NAME, [
  "#{GLOBALS.ANGULAR_APP_NAME}.templates"
  "ionic"
  "angulartics.google.analytics"
  "angulartics.google.analytics.cordova",
  "firebase"
  "com.2fdevs.videogular"
  "com.2fdevs.videogular.plugins.controls"
  "com.2fdevs.videogular.plugins.overlayplay"
  "com.2fdevs.videogular.plugins.poster"
  "com.2fdevs.videogular.plugins.buffering"

])

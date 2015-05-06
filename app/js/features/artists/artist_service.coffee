###
A simple example service that returns some data.
###
angular.module("ionicstarter")

.factory "ArtistService", ->

  # Might use a resource here that returns a JSON array
  # Some fake testing data
  artists = [
    {
      id: 0
      alias: "Pan Dimension"
    }
    {
      id: 1
      alias: "Cake Dimension"
    }
  ]
  all: ->
    artists

  get: (artistId) ->

    # Simple index lookup
    artists[artistId]

###
A simple example service that returns some data.
###
angular.module("ionicstarter")

.factory "SongService", ->

  # Might use a resource here that returns a JSON array
  # coffeelint: disable=max_line_length
  # Some fake testing data
  songs = [
    {
      artist:
        alias: 'Aygahzu'
        avatar: 'https://d1hmps6uc7xmb3.cloudfront.net/1422500290650-4wy6hFh9nIt2q0m0.jpg'
      id: 0
      comments: [
        {
          'author': 'alias': 'Wally'
          'comment': 'This is incredible. Feels like I\'m walking on clouds underground'
          'timestamp': '2014-07-05T20:58:03.090410'
        }
        {
          'author': 'alias': 'archiecarey4'
          'comment': 'mmmmmmmmm\n'
          'timestamp': '2014-07-05T21:31:23.623360'
        }
      ]
      info: 'Amor'
      key: 523
      media:
        src: 'http://audio.chirbit.com/songaday_1404583242.mp3'
        type: 'audio/mpeg'
      timestamp: '2014-07-05T07:12:54.666980'
      title: 'Yurhn'
      user_id: 'google:107994261263995453602'
    }
    {
      artist:
        alias: 'Aygahzu'
        avatar: 'https://d1hmps6uc7xmb3.cloudfront.net/1422500290650-4wy6hFh9nIt2q0m0.jpg'
      id: 1
      comments: [
        {
          'author': 'alias': 'Wally'
          'comment': 'This is incredible. Feels like I\'m walking on clouds underground'
          'timestamp': '2014-07-05T20:58:03.090410'
        }
        {
          'author': 'alias': 'archiecarey4'
          'comment': 'mmmmmmmmm\n'
          'timestamp': '2014-07-05T21:31:23.623360'
        }
      ]
      info: 'viento'
      key: 523
      media:
        src: 'http://audio.chirbit.com/songaday_1404583242.mp3'
        type: 'audio/mpeg'
      timestamp: '2014-07-05T07:12:54.666980'
      title: 'sauce'
      user_id: 'google:107994261263995453602'
    }
  ]
  all: ->
    songs

  get: (songId) ->
    # Simple index lookup
    songs[songId]

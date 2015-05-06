###
A simple example service that returns some data.
###
angular.module("ionicstarter")

.factory "AccountService", ->

  # Might use a resource here that returns a JSON array
  # Some fake testing data
  account = {
    id: 0
    alias: "Pan Dimension"
    statement: "Heart Cake"
    songs:[ "500":true ]
    wall: "https://d1hmps6uc7xmb3.cloudfront.net/1420944051772-YCYuL9t0yOLOjii8.jpg"
    avatar:"https://d1hmps6uc7xmb3.cloudfront.net/1420349501170-j2Hsoc116CaCC1XE.png"
  }

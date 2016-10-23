PlayerNotifications = require '../lib/player-notifications'
sinon = require 'sinon'
assert = require 'assert'

# TODO
describe "Player notifications", ->
  beforeEach ->
    @playernotifications = new PlayerNotifications()

  it "Initialized", ->

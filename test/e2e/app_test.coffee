TestHelper = require './test_helper'

describe 'app init', ->

  it 'should land on the mission page', ->
    expect(browser.getLocationAbsUrl()).toMatch '/tab/mission'

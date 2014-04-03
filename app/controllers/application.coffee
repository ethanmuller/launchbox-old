module.exports = App.ApplicationController = Ember.ObjectController.extend
  userIp: null
  getIp: (->
    self = this
    $.get('http://ip-api.com/json').then (res) ->
      self.set('userIp', res.query)
    ).property()


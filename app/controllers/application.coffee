module.exports = App.ApplicationController = Ember.ObjectController.extend
  userIp: null

  userIpWithCommas: (->
    @get('userIp').replace(/\./g, ',')
  ).property('userIp')

  getIp: (->
    self = this
    $.get('http://ip-api.com/json').then (res) ->
      self.set('userIp', res.query)
    ).property()


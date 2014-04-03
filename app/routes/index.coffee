module.exports = App.IndexRoute = Ember.Route.extend
  beforeModel: ->
    sesh = @controllerFor('application')
    sesh.get('getIp').then (appController) ->
      key = appController.get('userIp').replace(/\./g, ',')

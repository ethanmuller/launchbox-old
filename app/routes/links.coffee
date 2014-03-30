module.exports = App.LinksRoute = Ember.Route.extend
  model: ->
    @get('store').fetch('link')

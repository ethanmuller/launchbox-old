module.exports = App.LinksRoute = Ember.Route.extend
  model: ->
    store = @get('store')
    store.fetch('link')

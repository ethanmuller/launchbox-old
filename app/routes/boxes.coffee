module.exports = App.BoxesRoute = Ember.Route.extend
  model: ->
    store = @get('store')
    store.fetch('box')

module.exports = App.BoxRoute = Ember.Route.extend
  model:  ->
    @store.find('box')

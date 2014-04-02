module.exports = App.BoxRoute = Ember.Route.extend
  model: ->
    @get('store').find('box')

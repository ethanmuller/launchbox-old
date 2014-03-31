module.exports = App.BoxRoute = Ember.Route.extend
  model: (params) ->
    @get('store').fetch('box', params.box_id)

module.exports = App.BoxRoute = Ember.Route.extend
  model: (params) ->
    myBox = @get('store').fetch('box', params.box_id)

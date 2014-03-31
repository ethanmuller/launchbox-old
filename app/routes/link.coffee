module.exports = App.LinkRoute = Ember.Route.extend
  model: (params) ->
    console.log "PARAMS"
    console.log params
    @get('store').fetch('link', params.link_id)

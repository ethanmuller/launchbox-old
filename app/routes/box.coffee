module.exports = App.BoxRoute = Ember.Route.extend
  model:  ->
    success = ->
      console.log 'yay'

    fail = (reason) ->
      console.log 'failed. heres why:'
      console.log reason

    @store.find('box').then(success, fail)

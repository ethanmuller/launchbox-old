module.exports = App.BoxRoute = Ember.Route.extend
  model:  ->
    @store.createRecord 'box',
      id: 'asdf'
      ip: 'buttcheeks'

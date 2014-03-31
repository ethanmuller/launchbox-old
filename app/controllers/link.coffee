module.exports = App.LinkController = Ember.ObjectController.extend
  actions:
    delete: ->
      @get('model').set('softDeleted', true).save()
      false

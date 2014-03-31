module.exports = App.LinkController = Ember.ObjectController.extend
  needs: 'box'
  isEditing: Ember.computed.alias('controllers.box.isEditing')

  actions:
    delete: ->
      @get('model').set('softDeleted', true).save()
      false

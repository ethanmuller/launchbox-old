module.exports = App.BoxController = Ember.ObjectController.extend
  actions:
    newBox: ->
      newBox = @get('store').createRecord 'box',
        ip: '1234'

      newBox.save()
      false

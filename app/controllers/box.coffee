module.exports = App.BoxController = Ember.ObjectController.extend
  needs: 'session'
  userIp: Ember.computed.alias('controllers.session.userIp')

  actions:
    newBox: ->
      newBox = @get('store').createRecord 'box',
        ip: '1234'

      newBox.save()
      false

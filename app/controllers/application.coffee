module.exports = App.ApplicationController = Ember.ObjectController.extend
  needs: 'session'
  userIp: Ember.computed.alias('controllers.session.userIp')

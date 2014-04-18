module.exports = App.BoxRoute = Ember.Route.extend
  model:  ->
    self = this
    console.log 'here we go'
    @controllerFor('application').get('getIp').then (app) ->
      success = (box) ->
        console.log 'getting existing box'
        box
      failure = (reason) ->
        console.log 'creating new box'
        newBox = self.store.createRecord 'box',
          id: app.get('userIpWithCommas')
          ip: app.get('userIp')
        newBox.save()

      self.get('store').find('box', app.get('userIpWithCommas')).then(success, failure)

module.exports = App.BoxRoute = Ember.Route.extend
  model: (params) ->
    $.get('http://ip-api.com/json').then (res) =>
      ip = res.query
      id = ip.replace(/\./g, ',')
      self = this
      @get('store').fetch('box', id).then (box) ->
        box
      , (reason) ->
        newBox = self.store.createRecord 'box',
          id: id
          ip: ip

        newBox.save()

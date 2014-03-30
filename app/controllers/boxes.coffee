module.exports = App.BoxesController = Ember.ArrayController.extend
  create: ->
    newBox = @store.createRecord 'box',
      ip: window.IP
      id: @escapeIp(window.IP)
    newBox.save()

  escapeIp: (ip) ->
    return false if !ip
    ip.replace(/\./g, ',')

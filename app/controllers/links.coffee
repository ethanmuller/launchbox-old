module.exports = App.LinksController = Ember.ArrayController.extend
  getIp: ->
    $.get 'http://api.hostip.info/get_json.php', (data) ->
      data.ip
  create: ->
    newLink = @store.createRecord 'link',
      name: @get('name')
      url: @get('url')
      ip: '0.0.0.0'
    newLink.save()
    @set('name', '')
    @set('url', '')

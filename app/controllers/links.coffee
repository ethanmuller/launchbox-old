module.exports = App.LinksController = Ember.ArrayController.extend
  getIp: ->
    $.get 'http://api.hostip.info/get_json.php', (data) ->
      data.ip
  createLink: ->
    newLink = @store.createRecord 'link',
      name: @get('name')
      url: @get('url')
    newLink.save()
    @set('name', '')
    @set('url', '')

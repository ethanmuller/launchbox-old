module.exports = App.LinksController = Ember.ArrayController.extend
  createLink: ->
    newLink = @store.createRecord 'link',
      id: @get('id')
      name: @get('name')
      url: @get('url')
    newLink.save()
    @set('id', '')
    @set('name', '')
    @set('url', '')

module.exports = App.LinksController = Ember.ArrayController.extend
  createLink: ->
    newLink = @store.createRecord 'link',
      name: @get('name')
      url: @get('url')
    newLink.save()
    @set('name', '')
    @set('url', '')

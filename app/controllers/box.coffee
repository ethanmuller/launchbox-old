module.exports = App.BoxController = Ember.ObjectController.extend
  createLink: ->
    box = @get('content')

    newLink = @store.createRecord 'link',
      id: 9999
      name: @get('name')
      url: @get('url')
      box: box

    newLink.save()

    # add new link to box
    box.get('links').addObject(newLink)
    box.save()

    # clear inputs
    @set('name', '')
    @set('url', '')

    return false

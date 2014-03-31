module.exports = App.BoxController = Ember.ObjectController.extend
  createLink: ->
    box = @get('content')

    newLink = @store.createRecord 'link',
      name: @get('name')
      url: @get('url')
      box: box

    # add new link reference to box
    box.get('links').pushObject(newLink)
    box.save().then ->
      # save record
      newLink.save()

    # clear inputs
    @set('name', '')
    @set('url', '')

    return false

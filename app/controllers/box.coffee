module.exports = App.BoxController = Ember.ObjectController.extend

  notDeletedLinks: (->
    @get('links').filterBy('softDeleted', false)
  ).property('links.@each.softDeleted')

  deletedLinks: (->
    @get('links').filterBy('softDeleted', true)
  ).property('links.@each.softDeleted')



  createLink: ->
    box = @get('content')

    newLink = @store.createRecord 'link',
      name: @get('name')
      url: @get('url')
      box: box

    # add new link reference to box
    box.get('links').pushObject(newLink)
    box.save()

    # clear inputs
    @set('name', '')
    @set('url', '')

    return false

  actions:
    emptyTrash: ->
      links = 
      $.each @get('deletedLinks'), ->
        self.get('links').removeObject(this)

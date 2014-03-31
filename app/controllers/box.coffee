module.exports = App.BoxController = Ember.ObjectController.extend

  isEditing: false

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
      $.each @get('deletedLinks'), ->
        this.delete()

    edit: ->
      @set('isEditing', true)

    cancelEdits: ->
      @set('isEditing', false)

    saveEdits: ->
      @set('isEditing', false)

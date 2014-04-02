module.exports = App.BoxController = Ember.ObjectController.extend()

  # isEditing: false

  # notDeletedLinks: (->
    # @get('links').filterBy('softDeleted', false)
  # ).property('links.@each.softDeleted')

  # deletedLinks: (->
    # @get('links').filterBy('softDeleted', true)
  # ).property('links.@each.softDeleted')

  # createLink: ->
    # box = @get('content')

    # newLink = @store.createRecord 'link',
      # name: @get('name')
      # url: @get('url')
      # box: box
    
    # newLink.save()

  # actions:
    # emptyTrash: ->
      # $.each @get('deletedLinks'), ->
        # this.delete()

    # edit: ->
      # @set('isEditing', true)

    # cancelEdits: ->
      # @set('isEditing', false)
      
      # # if links dirty
        # # confirm 'you sure?'
          # # reset stuff
      # # else
        # # reset stuff

    # saveEdits: ->
      # links = @get('notDeletedLinks') # should only be saving dirty links
      # # We shouldn't have to do this.
      # # We should just be able to save all of these in one go...
      # $.each links, ->
        # this.save()
      # @set('isEditing', false)

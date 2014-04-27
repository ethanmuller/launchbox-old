module.exports = App.BoxController = Ember.ObjectController.extend
  isEditing: false

  date: (->
    (new Date).toString()
  ).property().cacheable(false)

  myLinks: (->
    @get('links').map (link, index) =>
      link: link
      isLast: index is (@get('links.length') - 1)
  ).property('links.@each')

  createLink: ->
    return unless @get('isValid')

    box = @get('content')

    newLink = @store.createRecord 'link', 
      name: @get('name')
      url: @get('url')

    # add to box
    box.get('links').addObject(newLink)
    box.save()

    newLink.save()

    @set('name', '')
    @set('url', '')

    console.log 'saved'
    console.log newLink

  isValid: (->
    name = @get('name')
    url = @get('url')
    !Ember.isEmpty($.trim(name)) and !Ember.isEmpty($.trim(url))
  ).property('name', 'url')

  isInvalid: (->
    !@get('isValid')
  ).property('isValid')

  actions:
    edit: ->
      @set('isEditing', true)
      false

    cancelEdits: ->
      links = @get('content').get('links')
      if links.anyBy('isDirty')
        if confirm('You sure, hoss?')
          links.invoke('rollback')
          @toggleProperty('isEditing')
      else
        @toggleProperty('isEditing')
      false

    saveEdits: ->
      @get('content').get('links').filterBy('isDirty').invoke('save')
      @toggleProperty('isEditing')
      false

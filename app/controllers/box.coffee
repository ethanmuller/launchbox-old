module.exports = App.BoxController = Ember.ObjectController.extend
  isEditing: false

  date: (->
    (new Date).toString()
  ).property().cacheable(false)

  notDeletedLinks: (->
    @get('links').filterBy('softDeleted', false)
  ).property('links.@each.softDeleted')

  myLinks: (->
    @get('notDeletedLinks').map (link, index) =>
      link: link
      isLast: index is (@get('notDeletedLinks.length') - 1)
  ).property('notDeletedLinks')

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

  isEditable: (->
    @get('notDeletedLinks.length') > 0 and not @get('isEditing')
  ).property('notDeletedLinks', 'isEditing')

  actions:
    edit: ->
      @set('isEditing', true)
      false

    cancelEdits: ->
      links = @get('content').get('links')
      if links.anyBy('isDirty')
        if confirm("You've made some changes. Are you sure you want to discard them?")
          links.invoke('rollback')
          @toggleProperty('isEditing')
      else
        @toggleProperty('isEditing')
      false

    saveEdits: ->
      @get('content').get('links').filterBy('isDirty').invoke('save')
      @toggleProperty('isEditing')
      false

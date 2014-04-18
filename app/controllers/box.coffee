module.exports = App.BoxController = Ember.ObjectController.extend
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

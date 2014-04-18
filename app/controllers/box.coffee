module.exports = App.BoxController = Ember.ObjectController.extend
  createLink: ->
    return unless @get('isValid')

    console.log @get('name')
    console.log @get('url')

  isValid: (->
    name = @get('name')
    url = @get('url')
    !Ember.isEmpty($.trim(name)) and !Ember.isEmpty($.trim(url))
  ).property('name', 'url')

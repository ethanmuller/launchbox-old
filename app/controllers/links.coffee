module.exports = App.LinksController = Ember.ArrayController.extend
  actions:
    createTest: ->
      link = @store.createRecord 'link',
        url: 'http://google.com'
        title: 'Google'
      console.log 'saving link'
      console.log link
      link.save()

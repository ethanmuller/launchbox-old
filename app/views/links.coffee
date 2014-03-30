module.exports = App.LinksView = Ember.View.extend
  templateName: 'links'
  submit: (e) ->
    e.preventDefault()
    @get('controller').createLink()

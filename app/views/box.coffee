module.exports = App.BoxView = Ember.View.extend
  templateName: 'box'
  submit: (e) ->
    e.preventDefault()
    @get('controller').createLink()

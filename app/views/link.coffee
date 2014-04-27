module.exports = App.LinkView = Ember.View.extend
  templateName: 'link'

  submit: (e) ->
    e.preventDefault()
    alert 'yooo'
    false

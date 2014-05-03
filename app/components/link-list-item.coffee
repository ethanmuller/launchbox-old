module.exports = App.LinkListItemComponent = Ember.Component.extend
  actions:
    toggleDeleted: ->
      console.log @get('model').toggleProperty('softDeleted')

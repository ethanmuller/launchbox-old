{ attr, belongsTo } = DS
module.exports = App.Link = DS.Model.extend
  name: attr('string')

  url: attr('string')

  softDeleted: attr('boolean', { defaultValue: false })

  absoluteUrl: (->
    url = @get('url')
    return if Ember.isEmpty(url)
    uri = URI(url)
    if uri.is('relative')
      '//' + uri.toString()
    else
      uri.toString()
  ).property('url')

{ attr, hasOne } = FP

module.exports = App.Link = FP.Model.extend
  name: attr('string')

  url: attr('string')

  id: attr('number')

  softDeleted: attr('boolean', default: false)

  box: hasOne(embedded: false)

  absoluteUrl: (->
    url = @get('url')
    return if Ember.isEmpty(url)
    uri = URI(url)
    if uri.is('relative')
      '//' + uri.toString()
    else
      uri.toString()
  ).property('url')


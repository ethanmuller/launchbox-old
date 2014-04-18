{ attr, belongsTo } = DS
module.exports = App.Link = DS.Model.extend
  name: attr('string')
  url: attr('string')

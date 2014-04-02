{ attr, hasMany } = DS
module.exports = App.Box = DS.Model.extend
  ip: attr('string')
  links: hasMany('link')

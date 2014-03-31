{ attr, hasMany } = FP

module.exports = App.Box = FP.Model.extend
  ip: attr('string')

  id: attr('string')

  links: hasMany()

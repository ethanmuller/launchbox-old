attr = FP.attr

module.exports = App.Box = FP.Model.extend
  ip: attr('string')
  id: attr('string')
  links: FP.hasMany()

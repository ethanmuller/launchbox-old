module.exports = App.Router.map ->
  this.resource('links', { path: '/' })
  this.resource('link', { path: '/:link_id' })

module.exports = App.Router.map ->
  this.resource('box', { path: '/:box_id' })

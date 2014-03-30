$.get 'http://ip-api.com/json', (res) ->
  window.IP = res.query

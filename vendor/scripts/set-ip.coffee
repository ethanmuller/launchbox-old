$.get 'http://api.hostip.info/get_json.php', (res) ->
  window.IP = res.ip

# I KNOW THIS IS BAD
# HOW DO I DO IT BETTER?
$.get 'http://ip-api.com/json', (res) ->
  window.USER_IP = res.query

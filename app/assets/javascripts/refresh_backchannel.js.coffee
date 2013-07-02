window.App ||= {}

window.App.RefreshBackchannel =

  stopRefreshing: ->
    clearInterval @id

  init: ( interval=5000 ) ->
    @id = setInterval ->
      $.getScript "/"
    , interval

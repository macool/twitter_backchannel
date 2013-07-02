window.App ||= {}

window.App.RefreshBackchannel =

  stopRefreshing: ->
    clearInterval @id

  init: ( interval=10000 ) ->
    @id = setInterval ->
      $.getScript "/"
    , interval

window.App ||= {}

window.App.RefreshBackchannel =

  stopRefreshing: ->
    clearInterval @id

  init: ( interval=10000 ) ->
    window.infiniteScrollHelper.init()
    @id = setInterval ->
      $.getScript "/"
    , interval

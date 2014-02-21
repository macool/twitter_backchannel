window.infiniteScrollHelper =
  init: ->
    $(".the_tweets").infinitescroll
      navSelector: "nav.pagination" # selector for the paged navigation (it will be hidden)
      nextSelector: "nav.pagination a[rel=next]" # selector for the NEXT link (to page 2)
      itemSelector: ".tweet" # selector for all items you'll retrieve
      loading:
        finishedMsg: "No hay más tuits"
        msgText: "Cargando.."
        speed: "slow"
        img: ""

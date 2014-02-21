window.infiniteScrollHelper =
  init: ->
    $(".the_tweets").infinitescroll
      animate: true
      navSelector: "nav.pagination" # selector for the paged navigation (it will be hidden)
      nextSelector: "nav.pagination a[rel=next]" # selector for the NEXT link (to page 2)
      itemSelector: ".tweet" # selector for all items you'll retrieve
      loading:
        finishedMsg: "No hay más tuits"
        msgText: "<div class='progress progress-striped active'><div class='bar' style='width: 100%;'></div></div>"
        speed: "slow"
        finished: ->
          $("#infscr-loading").slideUp()
          window.applyHelpers()

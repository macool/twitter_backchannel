window.applyHelpers = ($el = $("body")) ->
  $el.linkify();
  $el.find(".ttip").tooltip();

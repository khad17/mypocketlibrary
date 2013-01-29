# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  paintIt = (element, backgroundColor, textColor) ->
    element.style.backgroundColor = backgroundColor
    if textColor?
      element.style.color = textColor
    
  $("#urlToClick").click ->
    paintIt($("#urlToClick"), '#990000', '#990000')

  $(".carousel").carousel ->
    interval:2000
  
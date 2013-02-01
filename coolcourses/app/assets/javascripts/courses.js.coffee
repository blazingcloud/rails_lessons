# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  ajax_options = {
    url: "/courses/1/sections",
    type: 'get',
    dataType: 'json',
    success: (resp, status) ->
      $("#sections").append(JST['sections']('sections':resp))
    error: (resp, status) ->
  }
  $.ajax ajax_options
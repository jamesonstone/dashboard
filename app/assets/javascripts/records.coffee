# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# helper function for animation on /records/new/
$(document).ready ->
  $('#records_project_code').on 'change', ->
    if @value == '8'
      $('.add_new_project').show()
    else
      $('.add_new_project').hide()
    return
  return
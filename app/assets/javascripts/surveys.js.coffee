# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  new_form_fields()

new_form_fields = ->
  if jQuery('#survey_country').val() == 'India'
    jQuery('#state_district_section').show()
  else
    jQuery('#state_district_section').hide()

  jQuery('#survey_country').change ->
    if @value == 'India'
      jQuery('#state_district_section').show()
    else
      jQuery('#state_district_section').hide()


$(document).on 'page:load', ->
  new_form_fields()

  
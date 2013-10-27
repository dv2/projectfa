# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  new_form_fields()

new_form_fields = ->
  if jQuery('#survey_country').val() == 'India'
    jQuery('#state_section').show()
    if jQuery('#survey_india_state').val() == 'Andhra Pradesh'
      jQuery('#district_section').show()
    else
      jQuery('#district_section').hide()
      jQuery('#survey_ap_district').val('')
  else
    jQuery('#state_section').hide()
    jQuery('#survey_india_state').val('')
    jQuery('#district_section').hide()
    jQuery('#survey_ap_district').val('')

  jQuery('#survey_country').change ->
    if @value == 'India'
      jQuery('#state_section').show()
    else
      jQuery('#state_section').hide()
      jQuery('#survey_india_state').val('')
      jQuery('#district_section').hide()
      jQuery('#survey_ap_district').val('')

  jQuery('#survey_india_state').change ->
    if @value == 'Andhra Pradesh'
      jQuery('#district_section').show()
    else
      jQuery('#district_section').hide()
      jQuery('#survey_ap_district').val('')


$(document).on 'page:load', ->
  new_form_fields()

  
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#boulder_block_id').parent().hide()
  states = $('#boulder_block_id').html()
  console.log(states)
  $('#sector_id').change ->
    country = $('#sector_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label=#{escaped_country}]").html()
    console.log(options)
    if options
      $('#boulder_block_id').html(options)
      $('#boulder_block_id').parent().show()      
    else
      $('#boulder_block_id').empty()
      $('#boulder_block_id').parent().hide()
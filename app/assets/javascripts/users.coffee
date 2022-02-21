$ ->
  $('#submit').attr 'disabled', 'disabled'
  $('#terms_and_condiions').click ->
    if $(this).prop('checked') == false
      $('#submit').attr 'disabled', 'disabled'
    else
      $('#submit').removeAttr 'disabled'
    return
  return

$ ->
  # 「id="testingPic"」がクリックされた場合
  # $('#first-pic').click ->
  #   $('#first-content').animate { 'marginTop': '0px', opacity: 1 }, 1500
  #   return
  #
  # $('#second-pic').click ->
  #   $('#second-content').animate { 'marginTop': '0px', opacity: 1 }, 1500
  #   return
  #
  # $('#third-pic').click ->
  #   $('#third-content').animate { 'marginTop': '0px', opacity: 1 }, 1500
  #   return
  #
  # $('#fourth-pic').click ->
  #   $('#fourth-content').animate { 'marginTop': '0px', opacity: 1 }, 1500
  #   return

  $('#marketing').hover (->
    $(this).css 'background-image', $(this).css('background-image').replace('_off', '_on')
    return
  ), ->
    $(this).css 'background-image', ''
    return

  $('#advertising').hover (->
    $(this).css 'background-image', $(this).css('background-image').replace('_off', '_on')
    return
  ), ->
    $(this).css 'background-image', ''
    return

  $('#localising').hover (->
    $(this).css 'background-image', $(this).css('background-image').replace('_off', '_on')
    return
  ), ->
    $(this).css 'background-image', ''
    return

  $('#forwarding').hover (->
    $(this).css 'background-image', $(this).css('background-image').replace('_off', '_on')
    return
  ), ->
    $(this).css 'background-image', ''
    return

  $('a[href^="#"]').click ->
    # スクロールの速度
    speed = 1000
    # ミリ秒
    # アンカーの値取得
    href = $(this).attr('href')
    # 移動先を取得
    target = $(if href == '#' or href == '' then 'html' else href)

    # 移動先を数値で取得
    position = target.offset().top;
    # スムーススクロール
    $('body,html').animate { scrollTop: position }, speed, 'swing'
    return false;

  $('.section-copy').click ->
    window.location = $(this).find('a').attr('href')
    return　false;
return

$ ->
  $.fn.extend
    typeOut: ( str, speed = 250, callback ) ->
      str = $( this ).text() or $( this ).attr( "data-typeout" ) unless str
      $target = $( this )    
      count = 1
      intervalId = setInterval ->
        $target.html str.substr 0, count
        count += 1
        if count is str.length + 1
          clearInterval( intervalId )
          callback( $target )
      , speed
  
    unwrapInner: ( selector ) ->
      children = $( this ).children()
      if children.length is 1
        $( this ).html children.html()
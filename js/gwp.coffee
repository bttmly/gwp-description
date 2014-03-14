$ ->
  
  ### header ###
  do ->
  
    $typeoutTitle = $( ".typeout-title" )
    $header = $( ".main-header" )
    
    $.fn.typeOut = ( str, speed = 250, callback ) ->
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
    
    $.fn.unwrapInner = ( selector ) ->
      children = $( this ).children()
      if children.length is 1
        $( this ).html children.html()
    
    setTimeout ->
      $typeoutTitle.typeOut false, 150, ( el ) ->
        $el = $( el )
        
        $header
        .addClass( "main-header--formatted" )

        $el.animate opacity: 0, 300, ->

          $el
          .addClass( "typeout-title--formatted" )
          .html( "Next Generation Word Processing" )
          .animate
            opacity: 1
          , 300
         
    , 2000
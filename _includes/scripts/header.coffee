  $ ->
    $typeoutTitle = $( ".typeout-title" )
    $header = $( ".main-header" )
    
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
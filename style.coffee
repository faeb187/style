###
  STYLE HELPER

  @author faeb187
  @git    https://github.com/faeb187
###

# EXPORTS
export Style = (->

  # PRIVATE
  # nothing here yet...
  
  # PUBLIC
  return {

    # @desc     RENDER STYLES IN DOCUMENT HEAD
    # @param    styles  {Array}   array of style definitions
    # @param    opt.id  {String}  id of <style> element
    # @return   void
    render: ( styles, opt ) ->
      opt     = opt or {}
      $style  = $( '<style>' ).text @parse styles

      # replace existing <style> when id
      if opt.id
        $( '#' + opt.id ).remove()
        $style[ 0 ].id = opt.id
      
      # render css
      $( 'head' ).append $style[ 0 ]


    # @desc     PARSE STYLE ARRAY
    # @param    styles  {Array}   array of style definitions
    # @return   css     {String}  minified css string
    parse: ( styles ) ->
      css = open = ''

      for style in styles
        tag = style[ 0 ]

        # NEW TAG starting
        if tag isnt open

          # close previous and open next
          if css then css += '}'
          css += tag + '{'

          # remember current
          open = tag
     
        # APPEND css property
        css += style[ 1 ] + ':' + style[ 2 ] + ';'
      
      css += '}'

  }

)()

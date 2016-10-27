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
      opt = opt or {}

      $style = $( '<style>' ).text @parse styles

      # style is UNIQUE
      # (opt.id available)
      if opt.id
        
        # REMOVE EXISTING style by id
        $( '#' + opt.id ).remove()
        
        # SET ID of style
        $style[ 0 ].id = opt.id
      
      # append style to <head>
      $( 'head' ).append $style[ 0 ]


    # @desc     PARSE STYLE ARRAY
    # @param    styles  {Array}   array of style definitions
    # @return   css     {String}  minified css string
    parse: ( styles ) ->
      css = open = ''

      # move through styles
      for style in styles
        tag = style[ 0 ]

        # NEW TAG starting
        if tag isnt open

          # CLOSE PREVIOUS css class
          if css then css += '}'

          # OPEN NEW css class
          css += tag + '{'

          # set CURRENTLY OPEN TAG
          open = tag
     
        # APPEND property value pair
        css += style[ 1 ] + ':' + style[ 2 ] + ';'

      # CLOSE LAST TAG and return
      css += '}'
  }

)()

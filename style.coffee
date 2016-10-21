###
  STYLE HELPER

  @author faeb187
  @git    https://github.com/faeb187
###

# EXPORTS
export Style = (->
 
  return {

    # @desc     PARSE STYLE ARRAY
    # @param    styles  {Array}   array of style definitions
    # @return   css     {String}  minified css string
    parse: ( styles ) ->
      css = open = ''

      # move through styles
      for style in styles
        tag = style[ 0 ]

        # new tag starting
        if tag isnt open
          if css then css += '}'
          css += tag + '{'
          open = tag
     
        # append css style
        css += style[ 1 ] + ':' + style[ 2 ] + ';'

      # close last tag and return
      css += '}'
  }

)()

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
    # @require  CoffeeScript >= 1.11.0 (ES2015 import/export syntax)
    # @example
    #   import { Style } from 'path/to/[fileName]'
    #   css = Style.parse [
    #     [ 'body', 'background', '#000' ],
    #     [ 'body', 'overflow'  , 'hidden' ],
    #     [ 'h2'  , 'color'     , 'blue' ]
    #   ]
    parse: ( styles ) ->
      css = tagOpen = ''

      # move through styles
      for style in styles
        tag = style[ 0 ]

        # new tag starting
        if tag isnt tagOpen
          if css then css += '}'
          css += tag + '{'
          tagOpen = tag
     
        # append css style
        css += style[ 1 ] + ':' + style[ 2 ] + ';'

      # close last tag and return
      css += '}'
  }

)()

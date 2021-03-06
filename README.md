# Style

easily parse an array of styles to a minified css string.

## Example

```coffeescript
# put the file where you like
# example path: /client/lib/helpers/style.coffee
import { Style } from '/client/lib/helpers/style'

# example styles to parse
styles = [
  [ 'body', 'background', '#000'  ]
  [ 'body', 'overflow'  , 'hidden']
  [ 'h2'  , 'color'     , '#eee'  ]
]

# parse to minified css
console.log Style.parse styles

# console output:
# body{background:#000;overflow:hidden;},h2{color:#eee;}

# gets appended as <style> into <head>
Style.render styles

# you can set the id of <style>
# alredy existing style with id gets replaced
Style.render styles, id: 'my-style'

```

## CoffeeScript ES2015 Syntax

ES2015 import/export syntax was added in CoffeeScript version 1.11.0.

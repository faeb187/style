# Style

easily parse an array of styles to a minified css string.

## Example

```coffee
# put the file where you like
# example path: /lib/helpers/style.coffee
import { Style } from '/lib/helpers/style'

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
```

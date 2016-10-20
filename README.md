# Style

easily parse an array of styles to a minified css string.

## Why?

Maybe you want to save your site styles in a db and you need a format to easily add/remove styles.

## How?

Just save your site styles as array (e.g. in MongoDB)

### Example

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

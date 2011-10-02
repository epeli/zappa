doctype 5
html ->
  head ->
    title 'CoffeeKup file layout'
    @renderStyleTags()
    @renderScriptTags()
  body ->
    h1 'CoffeeKup file layout'
    @body

require('./zappa') ->

  @enable 'serve jquery'

  @get "/": ->
    @render 'index'

  @client ->
    console.log "Hello, I will run on every page"

  @client namespaced: ->
    console.log "I will run only where namespace 'namespaced' is"


  @view index: ->
        div ->
          h1 -> "Hello, node-pile in Zappa!"

  @css '''
  h1 {
    color: blue;
  }
  '''

  @view layout: ->
    doctype 5
    html ->
      head ->
        title "Hello Assets"
        @renderStyleTags() + @renderScriptTags("namespaced")
      body @body

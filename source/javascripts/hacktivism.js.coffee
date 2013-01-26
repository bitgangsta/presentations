# Full list of configuration options available here:
# https://github.com/hakimel/reveal.js#configuration

Reveal.initialize
  controls: true
  progress: true
  history: true
  center: true
  theme: Reveal.getQueryHash().theme # available themes are in stylesheets/reveal/themes
  transition: Reveal.getQueryHash().transition or "default" # default/cube/page/concave/zoom/linear/fade/none

  # Optional libraries used to extend on reveal.js
  dependencies: [
    src: "javascripts/reveal/lib/classList.js"
    condition: ->
      not document.body.classList
  ,
    src: "javascripts/reveal/plugins/markdown/showdown.js"
    condition: ->
      !!document.querySelector("[data-markdown]")
  ,
    src: "javascripts/reveal/plugins/markdown/markdown.js"
    condition: ->
      !!document.querySelector("[data-markdown]")
  ,
    src: "plugin/highlight/highlight.js"
    async: true
    callback: ->
      hljs.initHighlightingOnLoad()
  ,
    src: "javascripts/reveal/plugins/zoom-js/zoom.js"
    async: true
    condition: ->
      !!document.body.classList
  ,
    src: "javascripts/reveal/plugins/notes/notes.js"
    async: true
    condition: ->
      !!document.body.classList

  # src: "javascripts/reveal/plugins/remotes/remotes.js"
  # async: true
  # condition: ->
  #   return !!document.body.classList
  ]


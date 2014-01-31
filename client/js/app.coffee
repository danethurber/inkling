#= require ./../components/jquery/jquery.js
#= require ./../components/handlebars/handlebars.js
#= require ./../components/ember/ember.js
#= require ./../components/ember-data/ember-data.js
#= require ./../components/showdown/compressed/showdown.js

#= require ./../components/codemirror/lib/codemirror.js
#= require ./../components/codemirror/lib/codemirror.js
#= require ./../components/codemirror/mode/markdown/markdown.js
#= require ./../components/codemirror/mode/xml/xml.js
#= require ./../components/leptureeditor/vendor/continuelist.js
#= require ./../components/leptureeditor/src/intro.js
#= require ./../components/leptureeditor/src/editor.js

#= require_self
#= require_tree ./config
#= require ./helpers
#= require ./inkling
#= require_tree ./../templates

App = Ember.Application.create
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_ACTIVE_GENERATION: true
  LOG_VIEW_LOOKUPS: true

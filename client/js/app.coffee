#= require ./../components/jquery/jquery.js
#= require ./../components/handlebars/handlebars.js
#= require ./../components/ember/ember.js
#= require ./../components/ember-data/ember-data.js
#= require ./../components/showdown/compressed/showdown.js

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

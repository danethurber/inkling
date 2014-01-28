#= require ./../components/jquery/jquery.js
#= require ./../components/handlebars/handlebars.js
#= require ./../components/ember/ember.js
#= require ./../components/ember-data/ember-data.js

#= require_self
#= require_tree ./config
#= require_tree ./../templates

App = Ember.Application.create
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_ACTIVE_GENERATION: true
  LOG_VIEW_LOOKUPS: true

converter = new Showdown.converter()

Ember.Handlebars.helper 'convert-markdown', (markdown) ->
  new Ember.Handlebars.SafeString converter.makeHtml markdown

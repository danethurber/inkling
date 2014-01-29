converter = new Showdown.converter()

Ember.Handlebars.helper 'convert-markdown', (markdown) ->
  console.log 'converting markdown'
  console.log markdown
  new Ember.Handlebars.SafeString converter.makeHtml markdown

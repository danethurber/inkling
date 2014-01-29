App.InklingView = Ember.View.extend
  markdown: ''

App.InklingEditor = Ember.View.extend
  templateName: 'inkling/editor'
  classNames: ['inkling-editor']

App.InklingPreview = Ember.View.extend
  templateName: 'inkling/preview'

  tagName: 'div'
  classNames: ['inkling-preview']

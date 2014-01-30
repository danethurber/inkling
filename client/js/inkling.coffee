App.InklingController = Ember.Controller.extend
  actions:
    boldSelection: () ->
      console.log 'bold it'

App.InklingView = Ember.View.extend
  markdown: ''

App.InklingEditor = Ember.View.extend
  templateName: 'inkling/editor'
  classNames: ['inkling-editor']

App.InklingTextArea = Ember.TextArea.extend
  classNames: ['inkling-editor-input']

  keyUp: ()->
    console.log 'key up'

  keyDown: ()->
    console.log 'key up'


App.InklingPreview = Ember.View.extend
  templateName: 'inkling/preview'

  tagName: 'div'
  classNames: ['inkling-preview']

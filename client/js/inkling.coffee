App.InklingController = Ember.Controller.extend Ember.Evented,
  actions:
    bold: () -> @trigger 'bold'
    italicize: () -> @trigger 'italicize'


App.InklingView = Ember.View.extend
  markdown: ''


App.InklingEditor = Ember.View.extend
  templateName: 'inkling/editor'
  classNames: ['inkling-editor']


App.MarkdownEditor = Ember.View.extend
  classNames: ['inkling-editor-input']
  proxiedEvents: ['bold', 'italicize']

  editorOpts: {}

  didInsertElement: () ->
    el = @.$()[0]
    ctrl = @get 'controller'

    mirror = new window.CodeMirror el, @editorOpts

    mirror.on 'change', (instance) =>
      @set 'value', instance.getValue()

    ctrl.on(type, $.proxy(@[type], @)) for type in @proxiedEvents

  bold: () -> console.log 'bold it'

  italicize: () -> console.log 'italicize it'


App.InklingPreview = Ember.View.extend
  templateName: 'inkling/preview'

  tagName: 'div'
  classNames: ['inkling-preview']

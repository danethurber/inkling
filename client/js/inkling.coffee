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

  editorOpts:
    lineWrapping: true

  didInsertElement: () ->
    el = @.$()[0]
    ctrl = @get 'controller'

    opts = Ember.merge @editorOpts, value: @get('value')

    mirror = new window.CodeMirror el, opts

    mirror.on 'change', (instance) =>
      @set 'value', instance.getValue()

    ctrl.on(type, $.proxy(@[type], @)) for type in @proxiedEvents

  bold: () -> console.log 'bold it'

  italicize: () -> console.log 'italicize it'


App.InklingPreview = Ember.View.extend
  templateName: 'inkling/preview'

  tagName: 'div'
  classNames: ['inkling-preview']

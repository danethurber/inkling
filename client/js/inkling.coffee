App.InklingController = Ember.Controller.extend()

App.InklingView = Ember.View.extend
  markdown: ''


App.InklingEditor = Ember.View.extend
  templateName: 'inkling/editor'
  classNames: ['inkling-editor']


App.MarkdownEditor = Ember.TextArea.extend
  editorOpts: {}

  toolbarConfig: [{
    name: 'bold'
    action: Editor.toggleBold
    shortcut: 'Ctrl-B'
    className: 'icon-bold'
  }, {
    name: 'italic'
    action: Editor.toggleItalic
  }, '|', {
    name: 'quote'
    action: Editor.toggleBlockquote
  }, '|',{
    name: 'link'
    action: Editor.drawLink
  }, {
    name: 'image',
    action: Editor.drawImage
  }]


  didInsertElement: () ->
    el = @.$()[0]
    ctrl = @get 'controller'
    opts = Ember.merge @editorOpts,
      element: el
      toolbar: @toolbarConfig

    editor = new Editor opts

    editor.codemirror.on 'change', (instance) =>
      @set 'value', instance.getValue()


App.InklingPreview = Ember.View.extend
  templateName: 'inkling/preview'

  tagName: 'div'
  classNames: ['inkling-preview']

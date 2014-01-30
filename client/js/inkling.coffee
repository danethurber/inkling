App.InklingController = Ember.Controller.extend Ember.Evented,
  tags:
    bold: '**'

  getSelectedPosition: (el) ->
    start: el[0].selectionStart
    end: el[0].selectionEnd

  wrap: (str='', tag) ->
    [tag, str, tag].join('')

  replaceSelected: (el, str, position) ->
    arr = []

    arr.push el.val().substring(0, position.start)
    arr.push str
    arr.push el.val().substring(position.end, el.val().length)
    arr.join('')

  actions:
    bold: () ->
      area = $('textarea')

      pos = @getSelectedPosition area
      text = area.val().substring(pos.start, pos.end)

      if text.length > 0
        text = @wrap(text, @tags['bold'])
        @trigger 'updateMarkdown', @replaceSelected(area, text, pos)


App.InklingView = Ember.View.extend
  markdown: ''

  didInsertElement: () ->
    @get('controller').on 'updateMarkdown', $.proxy(@updateMarkdown, @)

  updateMarkdown: (str) ->
    @set 'markdown', str

App.InklingEditor = Ember.View.extend
  templateName: 'inkling/editor'
  classNames: ['inkling-editor']

App.InklingTextArea = Ember.TextArea.extend
  classNames: ['inkling-editor-input']

  # keyUp: ()->
  #   console.log 'key up'

  # keyDown: ()->
  #   console.log 'key up'


App.InklingPreview = Ember.View.extend
  templateName: 'inkling/preview'

  tagName: 'div'
  classNames: ['inkling-preview']

App.Router.reopen
  location: 'history'

App.Router.map ->
  @route 'index', { path: '/' }

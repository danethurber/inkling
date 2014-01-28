path = require 'path'

config = require 'config'
express = require 'express'

module.exports = app = express()

app.configure ->
  app.set 'port', config.ports.server
  app.set 'view engine', 'jade'
  app.set 'views',  config.paths.views

  app.use express.logger()
  app.use express.bodyParser()
  app.use express.methodOverride()

  app.use '/static', require('./middleware/mincer').server

  app.use app.router

app.configure 'development', () ->
  app.use express.errorHandler
    dumpExceptions: true
    showStack: true

app.configure 'production', () ->
  app.use express.errorHandler()

app.get '*', (req, res) -> res.render 'index'

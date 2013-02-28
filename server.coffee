express = require 'express'

app = express()

app.use express.logger 'dev'
app.use express.static "#{__dirname}/public"

server = app.listen 1337
console.log 'feather-daemon listening on *:1337'

modules = {}
for key, _module of (require './server_modules')
  modules[key] = _module app: app, server: server, dirname: __dirname
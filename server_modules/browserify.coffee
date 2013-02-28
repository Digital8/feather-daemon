# CoffeeScript = require 'coffee-script'
browserify = require 'browserify'

module.exports = ({app, dirname}) ->
  
  bundle = browserify
    entry: "#{dirname}/client.coffee"
    watch: on
    debug: on
  
  app.get '/bundle.js', (req, res) ->
    res.set 'Content-Type', 'text/javascript'
    res.send bundle.bundle()
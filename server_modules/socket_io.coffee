module.exports = ({app, server}) ->
  
  io = (require 'socket.io').listen server
  
  io.sockets.on 'connection', (socket) ->
  
  # socket.on 'log', ->
  #   console.log arguments...
  
  # socket.on 'getProject', (key) ->
  #   console.log 'getProject', arguments...
    
  #   project = require "./public/fixtures/projects/#{key}"
    
  #   # console.log 'project', project
    
  #   socket.emit 'project', project
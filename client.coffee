querystring = require 'querystring'

async = require 'async'
Feather = require 'feather'

$ ->
  
  socket = io.connect()
  
  socket.on 'job', (job) ->
    
    console.log 'job', job
    
    app = new Feather.Editor
    
    console.log app.graphics
  
  # socket.emit 'log', window.location.search
  # socket.emit 'log', window.location.search[1..]
  # socket.emit 'log', (querystring.parse window.location.search)
  # socket.emit 'log', (querystring.parse window.location.search[1..])
  
  # {project_id} = querystring.parse window.location.search[1..]
  
  # socket.emit 'log', 'project_id', project_id
  
  # socket.on 'project', (project) ->
  #   async.map project.images, (image, callback) ->
  #     socket.emit 'log', image
      
  #     img = new Image
      
  #     img.onload = ->
  #       document.body.appendChild img
        
  #       do callback
      
  #     img.src = "/fixtures/images/#{image.filename}"
  #     img.width = image.width
  #     img.height = image.height
  #     ($ img).css
  #       position: 'absolute'
  #       left: image.x
  #       top: image.y
  #   , ->
  #     window.callPhantom 'done'
  
  # socket.emit 'getProject', project_id
args = require('system').args

[project_id] = args[1..]

# console.log 'project_id', project_id

# console.log 'args', args

page = require('webpage').create()

page.viewportSize =
  # width: 12000
  # height: 12000

# console.log 'opening', "http://localhost:1337/?project=#{project_id}"

page.onCallback = ->
  console.log 'callback', arguments...
  
  # console.log 'rendering'
  console.time 'render'
  
  # setTimeout ->
  
  # page.render "renders/#{project_id}_#{page.viewportSize.width}_#{page.viewportSize.height}.png", -> console.log 'rendddeereerr'
  
  # console.log 'rendered'
  
  console.timeEnd 'render'
  
  # phantom.exit()
  
  # , 1000

# page.open "http://localhost:1337/?project_id=#{project_id}", ->
  
#   # console.log 'opened'
  
#   console.log 'arguments', arguments...
  
#   # page.onConsoleMessage = ->
#   #   console.log 'test'
#   #   console.log 'onConsoleMessage', arguments...
  
#   # # page.onLoadFinished = (status) ->
    
#   # #   console.log 'rendering second time...', Date.now()
#   # #   page.render 'render2.png'
  
#   # console.log 'rendering first time...', Date.now()
#   # page.render 'render.png'
  
#   # 

# child_process = require 'child_process'
# child_process.
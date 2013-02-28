dnode = require 'dnode'

module.exports = (app) ->
  
  node = dnode
    # transform: (s, cb) ->
    # cb s.replace(/[aeiou]{2,}/, "oo").toUpperCase()
    # exec: (cmd) ->
    # console.log 'cmd', cmd
    
    job: (job) ->
      console.log 'job', job
  
  node.listen 30000
  
  console.log 'listening'
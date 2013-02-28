module.exports = ({app}) ->
  
  app.get '/', (req, res) ->
    
    console.log 'Feather Deamon client connected'
    
    res.send """
      <html>
        <head>
          <title>feather daemon client</title>
          
          <script src="/jquery.js"></script>
          
          <script src="/socket.io/socket.io.js"></script>
          
          <script src="/bundle.js"></script>
        </head>
        
        <body>
        
        </body>
      </html>
    """
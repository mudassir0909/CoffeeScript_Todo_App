#Setup Express
global.express = require('express')
global.http = require('http')
global.app = app = express()
server = http.createServer(app)
require("#{__dirname}/src/configuration")

#setting up routing for the Home Page
require("#{__dirname}/src/controllers/home_controller")

#Initializing the application
server.listen(3000)
console.log("Server started on %d port in %s mode...",server.address().port, app.settings.env)
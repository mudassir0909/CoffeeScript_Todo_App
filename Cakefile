{exec} = require 'child_process'
task 'build', 'Should build the application by converting required coffee files to js files', ->
	exec 'coffee --compile app.coffee', (err, stdout, stderr) ->
		throw err if err?
		console.log "Compiled app.coffee..."
	exec 'coffee --compile src/controllers/', (err, stdout, stderr) ->
		throw err if err?
		console.log "Compiled controllers..."
	exec 'coffee --compile src/models/', (err, stdout, stderr) ->
		throw err if err?
		console.log "Compiled models..."
	exec 'coffee --compile src/configuration.coffee', (err, stdout, stderr) ->
		throw err if err?
		console.log "Compiled configuration.coffee.."
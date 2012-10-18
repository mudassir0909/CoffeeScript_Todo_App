#Requiring all the responders required
for name in ["index","create","show","update","destroy"]
	require("#{__dirname}/responders/#{name}_responder")

#This controller will handle the server requests for the Todo resource

#Get a list of todos
app.get '/api/todos', new Responder.Index().respond

#Add a new todos
app.post '/api/todos', new Responder.Create().respond

#Get a specific todo
app.get '/api/todos/:id', new Responder.Show().respond
		
#Update a specific todo
app.put '/api/todos/:id', new Responder.Update().respond

#Delete a specific todo
app.delete '/api/todos/:id', new Responder.Destroy().respond
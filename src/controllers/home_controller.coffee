#Router for the home page
app.get '/', (req, res) ->
	res.render "index", layout: false
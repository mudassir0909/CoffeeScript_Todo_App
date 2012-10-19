#The todo model for the backbone client
class @Todo extends Backbone.Model
	paramRoot: 'todo'
	url: ->
		u = '/api/todos'
		u += "/#{@get("_id")}" unless @isNew()
		return u
	isNew: ->
		!@get("_id")?
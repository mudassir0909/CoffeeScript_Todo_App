#= require "backbone_sync"
#= require "templates"
#= require_tree "models"
#= require_tree "views"

$ ->
	new TodoListView(collection: new Todos())

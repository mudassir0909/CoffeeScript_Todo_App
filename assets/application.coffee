#= require "backbone_sync"
#= require "templates"
#= require_tree "models"
#= require_tree "views"

$ ->
	new TodoListView(collection: new Todos())
	alert "ho ho ho !! Look whuz here :D he wants to maintain a todo list kate LOL :D anyways go on... :P"

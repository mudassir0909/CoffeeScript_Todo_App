@TodoApp ||= {}

#Watch Todo for changes like observers in Ember
TodoApp.watchForChanges = (li, todo) ->
	#If Checkbox is checked/unchecked
	$('.todo_state', li).click (e) =>
		TodoApp.updateTodo(li, todo)
	#If someone hits enter in the title textfield
	$('.todo_title', li).keypress (e) =>
		if e.keyCode is 13
			TodoApp.updateTodo(li, todo)
	$('button.danger', li).click (e) =>
		e.preventDefault()
		TodoApp.deleteTodo(li, todo)

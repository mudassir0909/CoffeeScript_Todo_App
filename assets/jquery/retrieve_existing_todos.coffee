$ ->
	request = $.get('/api/todos')
	request.done (todos) ->
		console.log todos
		for todo in todos.reverse()
			TodoApp.appendTodo(todo)
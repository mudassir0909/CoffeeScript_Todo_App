#The Todo Mongoose model
global.Todo = mongoose.model 'Todo', new Schema
	id: ObjectId
	title:
		type: String
		validate: /.+/
	description:
		type: String
		default: 'description of the todo item...'
	state:
		type: String
		default: 'pending'
	created_at:
		type: Date
		default: Date.now
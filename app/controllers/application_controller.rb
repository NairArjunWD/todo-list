class TodosController < ApplicationController
    def index
        todos = Todo.order("created_at DESC")
        render json: todos
    end

    def create 
        todos = Todo.create(todo_param)
        render json: todo
end

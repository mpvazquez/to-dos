class TasksController < ApplicationController
  def index
    tasks = Task.all
  end

  def create
    task = Task.create(thing_to_do: params[:thing_to_do])
    render json: task
  end

  def update
  end

  def destroy
  end
end
class TasksController < ApplicationController
  def index
  end

  def create
    task = Task.create(thing_to_do: params[:thing_to_do])
    render json: task
  end
end
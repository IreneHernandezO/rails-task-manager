class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show  #read
    id = params[id]
    @task = Task.find(params[:id])
  end

  def new #create
    @task = Task.new
  end

  def create  #create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit #update
    @task = Task.find(params[:id])

  end
  def update #update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy #destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end


  private
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

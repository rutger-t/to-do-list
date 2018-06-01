class TasksController < ApplicationController

  def index
    @tasks = Task.order(params[:sort]).page(params[:page]).per(4)
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      flash[:success] = "Task updated"
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end

  private
  
  def task_params
    params.require(:task).permit(:name, :description)
  end

end

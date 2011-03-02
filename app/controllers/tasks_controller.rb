class TasksController < ApplicationController
	
  def index
  	@tasks = Task.all
  	
  	render :json => {:tasks => @tasks }
  end

  def update
  	@task = Task.find(params[:id])
    if @task.update_attributes(params[:tasks])
      render :json => { :success => true, :message => "Updated task #{@task.id}", :tasks => @task }
    else
      render :json => { :message => "Failed to update task"}
    end
  end

  def destroy
  	@task = Task.find(params[:id])
    if @task.destroy
      render :json => { :success => true, :message => "Destroyed task #{@task.id}" }
    else
      render :json => { :message => "Failed to destroy task" }
    end
  end

  def create
  	@task = Task.new(params[:tasks])
    if @task.save
      render :json => { :success => true, :message => "Created new task #{@task.id}", :tasks => @task }
    else
      render :json => { :message => "Failed to create task"}
    end
  end
end

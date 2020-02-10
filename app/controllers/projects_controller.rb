class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @id = params[:id]
    @project = Project.find(@id)
    @users = @project.users
    @tasks = @project.tasks
  end
end

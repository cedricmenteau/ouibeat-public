class ProjectsController < ApplicationController

  before_action :authenticate_user!, except: :show
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to admin_path
    else
     render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to admin_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :title, :sub_title, :text, :logo, pictures: [])
    # params.require(:project).permit(:name, :title, :sub_title, :text, :pictures, :pictures_cache, {pictures: []}, {pictures_cache: []}, :logo, :logo_cache)
  end

end


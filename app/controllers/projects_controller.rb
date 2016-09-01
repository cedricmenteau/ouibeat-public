class ProjectsController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index_filter]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index_filter
    if !params[:filter].present? || params[:filter] == 'all'
      @projects = Project.all
    else
      @projects = Project.where('category = ?', params[:filter])
    end
  end

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
    @details = Detail.where(project_id: @project.id)
    @projects = Project.where.not(id: @project.id)
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
    params.require(:project).permit(:name, :category, :date, :title, :sub_title, :text, :logo, :picture, :filter)
  end

end


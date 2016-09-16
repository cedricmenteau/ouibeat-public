class ProjectsController < ApplicationController

  def index_filter
    if !params[:query].present? || params[:query] == 'all'
      @projects = Project.active
    else
      @projects = []
      @projects.push(Project.active.includes(:picture_files)  .where('category = ?', "Social Wall")) if params[:query].include? "social"
      @projects.push(Project.active.includes(:picture_files)  .where('category = ?', "Borne")) if params[:query].include? "borne"
      @projects.push(Project.active.includes(:picture_files)  .where('category = ?', "Conception")) if params[:query].include? "conception"
      @projects.flatten!
    end
  end

  def show
    @project = Project.find(params[:id])
    @projects = Project.includes(:picture_files).where.not(id: params[:id])
    @details = Detail.includes(:picture_files).where(project_id: params[:id])
  end

end


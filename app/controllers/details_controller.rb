class DetailsController < ApplicationController

  before_action :find_detail, only: [:edit, :update, :destroy, :move_lower, :move_higher]
  before_action :find_project, only: [:index, :new, :create, :edit, :move_lower, :move_higher]

  def index
    @details = Detail.where(project_id: @project)
  end

  def new
    @detail = @project.details.new
  end

  def create
    @detail = @project.details.build(detail_params)
    if @detail.save
      redirect_to admin_path
    else
      redirect_to :back
    end
  end

  def edit
  end

  def update
    if @detail.update(detail_params)
      redirect_to admin_path
    else
     render :edit
    end
  end

  def destroy
    @detail.destroy
    redirect_to admin_path
  end

  def move_lower
    @detail.move_lower
    binding.pry
    redirect_to project_details_path(params[:project_id])
  end

  def move_higher
    @detail.move_higher
    redirect_to project_details_path(params[:project_id])
  end

  private

  def find_detail
    @detail = Detail.find(params[:id])
  end

  def find_project
    @project = Project.find(params[:project_id])
  end

  def detail_params
    params.require(:detail).permit(:project_id, :title, :text, :link, pictures: [])
  end

end

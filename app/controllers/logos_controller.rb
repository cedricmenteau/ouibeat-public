class LogosController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  before_action :set_logo, only: [:edit, :update, :destroy, :move_lower, :move_higher]

  def index
    @logos = Logo.where('position > ?', params[:position]).includes(:picture_files).limit(6)
    if @logos[5].present? && params[:position].to_i < Logo.last.position
      params[:position] = @logos[5].position
    else
      params[:position] = nil
    end
  end

  def new
    @logo = Logo.new
  end

  def create
    @logo = Logo.new(logo_params)
    if @logo.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @logo.update(logo_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    @logo.destroy
    redirect_to admin_path
  end

  def move_lower
    @logo.move_lower
    redirect_to admin_path
  end

  def move_higher
    @logo.move_higher
    redirect_to admin_path
  end

  private

  def set_logo
    @logo = Logo.find(params[:id])
  end

  def logo_params
    params.require(:logo).permit(:name, :picture, :position, :link)
  end

end

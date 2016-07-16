class LogosController < ApplicationController

  before_action :authenticate_user!

  before_action :set_logo, only: [:edit, :update, :destroy]

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


  private

  def set_logo
    @logo = Logo.find(params[:id])
  end

  def logo_params
    params.require(:logo).permit(:name, :picture, :position, :link)
  end

end

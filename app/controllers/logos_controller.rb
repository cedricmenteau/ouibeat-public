class LogosController < ApplicationController

  def index
    @logos = Logo.where('position >= ?', params[:position]).includes(:picture_files).limit(13)
    if @logos[12].present? && @logos[12].position < Logo.last.position
      params[:position] = @logos[12].position
    else
      params[:position] = nil
    end
  end

end

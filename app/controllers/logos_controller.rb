class LogosController < ApplicationController

  def index
    @logos = Logo.where('position > ?', params[:position]).includes(:picture_files).limit(6)
    if @logos[5].present? && @logos[5].position < Logo.last.position
      params[:position] = @logos[5].position
    else
      params[:position] = nil
    end
  end

end

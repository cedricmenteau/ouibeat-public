class PagesController < ApplicationController

  def home
    if current_user
      redirect_to admin_path
    end
    @logos = Logo.all
    @projects = Project.all
  end

  def socialwall_welcome
  end

end

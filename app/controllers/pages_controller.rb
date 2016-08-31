class PagesController < ApplicationController

  def home
    if current_user
      redirect_to admin_path
    end
    @logos = Logo.limit(6)
    @projects = Project.all.shuffle
  end

  def socialwall
    @logos = Logo.all
    @projects = Project.all
  end

  def socialwall_plateforme
  end

  def socialwall_solution
  end

  def borne_connectee
  end

end

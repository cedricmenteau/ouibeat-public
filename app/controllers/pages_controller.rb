class PagesController < ApplicationController

  def home
    if current_user
      redirect_to admin_path
    end
    @logos = Logo.limit(6)
    @projects = Project.active.shuffle
  end

  def socialwall
    @logos = Logo.limit(6)
    @projects = Project.active.where('category = ?', 'Social Wall')
  end

  def socialwall_plateforme
  end

  def socialwall_solution
  end

  def borne_connectee
  end

end

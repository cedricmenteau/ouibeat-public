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
    @projects = Project.active.shuffle
  end

  def socialwall_plateforme
  end

  def socialwall_solution
  end

  def borne_connectee
    @logos = Logo.limit(6)
    @projects = Project.active.shuffle
  end

  def conception_digitale
    @projects = Project.active.shuffle
  end

  def contact
  end

  def certification
  end

  def jobs
  end

end

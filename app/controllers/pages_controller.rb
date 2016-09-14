class PagesController < ApplicationController

  before_action :find_logos, only: [:home, :socialwall, :borne_connectee]
  before_action :find_projects, only: [:home, :socialwall, :borne_connectee, :conception_digitale]

  def home
    if current_user
      redirect_to admin_path
    end
  end

  def socialwall
  end

  def socialwall_plateforme
  end

  def socialwall_solution
  end

  def borne_connectee
  end

  def conception_digitale
  end

  def contact
  end

  def certification
  end

  def jobs
    @jobs = Job.all
  end


  private

  def find_logos
    @logos = Logo.includes(:picture_files).limit(6)
  end

  def find_projects
    @projects = Project.active.includes(:picture_files).shuffle
  end

end

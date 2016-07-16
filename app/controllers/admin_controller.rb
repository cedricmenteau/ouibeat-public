class AdminController < ApplicationController

  before_action :authenticate_user!

  def dashboard
    @logos = Logo.all
    @projects = Project.all
  end

end

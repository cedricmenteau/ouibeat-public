class AdminController < ApplicationController

  before_action :authenticate_user!

  def dashboard
    @logos = Logo.all
    @projects = Project.all
    @details = Detail.all
  end

end

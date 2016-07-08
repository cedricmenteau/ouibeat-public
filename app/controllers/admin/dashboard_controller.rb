class Admin::DashboardController < ApplicationController

  before_action :authenticate_user!

  def index
    @logos = Logo.all
  end

end

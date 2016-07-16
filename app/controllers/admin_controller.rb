class AdminController < ApplicationController

  before_action :authenticate_user!

  def dashboard
    @logos = Logo.all
  end

end

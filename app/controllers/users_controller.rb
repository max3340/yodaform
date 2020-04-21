class UsersController < ApplicationController

  def dashboard
    @formations = Formation.order(:name).page(params[:page])
  end

end

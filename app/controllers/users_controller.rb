class UsersController < ApplicationController

  def dashboard
    @formations = current_user.formations
  end

end

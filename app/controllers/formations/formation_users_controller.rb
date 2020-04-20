class Formations::FormationUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_formation

  def create
    formation_user = @formation.formation_users.new(formation_user_params)
    formation_user.formation = @formation

    if formation_user.save
      redirect_to @formation, notice: "Success"
    else
      redirect_to @formation, alert: "Failure"
    end
  end

  def destroy
@formation.formation_users.find(params[:id]).destroy
redirect_to formations_path, notice: "Member removed"
end

  private

    def set_formation
      @formation = current_user.formations.find(params[:formation_id])
    end

    def formation_user_params
      params.require(:formation_user).permit(:email)
    end
end

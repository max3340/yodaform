class FormationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @formations = current_user.formations
  end

  def show
    @formation = Formation.find(params[:id])
  end

  def create
    @formation = Formation.new(formation_params)
    @formation.formation_users.new(user: current_user, role: "owner")

    if @formation.save
      redirect_to @formation
    else
      render :new
    end
  end

  def new
    @formation = Formation.new
  end

  private

  def set_project
      @formation = current_user.formations.find(params[:id])
    end

  def formation_params
    params.require(:formation).permit(:name, :start_date, :end_date)
  end

end

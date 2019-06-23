class PracticiensController < ApplicationController
skip_before_action :authenticate_user!, only: :index

  def index
    @practiciens = Practicien.all
    @practiciens = policy_scope(Practicien).order(created_at: :desc)
  end

  def new
    @practicien = Practicien.new
    authorize @practicien
  end

  def create
    @practicien = Practicien.new(practicien_params)
    @practicien.user_id = current_user
    authorize @practicien
    if @practicien.save!
      redirect_to practiciens_path
    else
      render :new
    end
  end

  def destroy
    @practicien = Practicien.find(params[:id])
    authorize @practicien
    @practicien.delete
    redirect_to practiciens_path
  end
  
  private

  def practicien_params
    params.require(:practicien).permit(:nom, :localisation, :education, :telephone, :site, :photo)
  end
end

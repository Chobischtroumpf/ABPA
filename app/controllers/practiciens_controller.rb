class PracticiensController < ApplicationController
skip_before_action :authenticate_user!, only: :index

  def index
        if params[:search_query].present?
      sql_query = " \
      practiciens.localisation @@ :query \
      AND practiciens.education @@ :query_bis \
      "
      @practiciens = policy_scope(Practicien.where(sql_query, query: "%#{params[:search_query]}%", query_bis: "%#{params[:sq_category]}%"))
      # @filtered_gardens = @gardens.select(category: params[:sq_category])
      # .where(category: params[:sq_category])

    else
     @practiciens = policy_scope(Practicien).order(created_at: :desc)
    end
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

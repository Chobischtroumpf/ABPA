class AgendasController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @agendas = Agenda.all
    @agendas = policy_scope(Agenda).order(created_at: :desc)
  end

  def new
    @agenda = Agenda.new
    authorize @agenda
  end

  def create
    @agenda = Agenda.new(agenda_params)
    @agenda.user = current_user
    authorize @agenda
    if @agenda.save!
      redirect_to agendas_path
    else
      render :new
    end
  end


  private

  def agenda_params
    params.require(:agenda).permit(:nom, :photo, :description, :date)
  end
end

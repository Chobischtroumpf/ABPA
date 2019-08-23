class AgendasController < ApplicationController
  before_action :find_garden, only: [:destroy]
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

  def destroy
    authorize @agenda
    @agenda.destroy
    redirect_to agendas_path
  end

  private

  def agenda_params
    params.require(:agenda).permit(:nom, :photo, :description, :date)
  end

  def find_agenda
    @agenda = Agenda.find(params[:id])
    authorize @agenda
  end
end

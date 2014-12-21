class BufetesController < ApplicationController
  before_action :set_bufete, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bufetes = Bufete.all
    respond_with(@bufetes)
  end

  def show
    respond_with(@bufete)
  end

  def new
    @bufete = Bufete.new
    respond_with(@bufete)
  end

  def edit
  end

  def create
    @bufete = Bufete.new(bufete_params)
    @bufete.save
    respond_with(@bufete)
  end

  def update
    @bufete.update(bufete_params)
    respond_with(@bufete)
  end

  def destroy
    @bufete.destroy
    respond_with(@bufete)
  end

  private
    def set_bufete
      @bufete = Bufete.find(params[:id])
    end

    def bufete_params
      params.require(:bufete).permit(:bufete_rut, :bufete_name, :bufete_address_street, :bufete_address_number, :bufete_address_floor, :bufete_office_number, :city_id, :bufete_first_phone, :bufete_second_phone, :bufete_email, :bufete_active)
    end
end

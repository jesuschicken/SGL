class BufeteLawyersController < ApplicationController
  before_action :set_bufete_lawyer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bufete_lawyers = BufeteLawyer.all
    respond_with(@bufete_lawyers)
  end

  def show
    respond_with(@bufete_lawyer)
  end

  def new
    @bufete_lawyer = BufeteLawyer.new
    respond_with(@bufete_lawyer)
  end

  def edit
  end

  def create
    @bufete_lawyer = BufeteLawyer.new(bufete_lawyer_params)
    @bufete_lawyer.save
    respond_with(@bufete_lawyer)
  end

  def update
    @bufete_lawyer.update(bufete_lawyer_params)
    respond_with(@bufete_lawyer)
  end

  def destroy
    @bufete_lawyer.destroy
    respond_with(@bufete_lawyer)
  end

  private
    def set_bufete_lawyer
      @bufete_lawyer = BufeteLawyer.find(params[:id])
    end

    def bufete_lawyer_params
      params.require(:bufete_lawyer).permit(:bufete_id, :lawyer_id, :bufete_lawyer_is_active)
    end
end

class BufeteClientLegalAffairsController < ApplicationController
  before_action :set_bufete_client_legal_affair, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bufete_client_legal_affairs = BufeteClientLegalAffair.all
    respond_with(@bufete_client_legal_affairs)
  end

  def show
    respond_with(@bufete_client_legal_affair)
  end

  def new
    @bufete_client_legal_affair = BufeteClientLegalAffair.new
    respond_with(@bufete_client_legal_affair)
  end

  def edit
  end

  def create
    @bufete_client_legal_affair = BufeteClientLegalAffair.new(bufete_client_legal_affair_params)
    @bufete_client_legal_affair.save
    respond_with(@bufete_client_legal_affair)
  end

  def update
    @bufete_client_legal_affair.update(bufete_client_legal_affair_params)
    respond_with(@bufete_client_legal_affair)
  end

  def destroy
    @bufete_client_legal_affair.destroy
    respond_with(@bufete_client_legal_affair)
  end

  private
    def set_bufete_client_legal_affair
      @bufete_client_legal_affair = BufeteClientLegalAffair.find(params[:id])
    end

    def bufete_client_legal_affair_params
      params.require(:bufete_client_legal_affair).permit(:bufete_client_id, :legal_affair_id)
    end
end

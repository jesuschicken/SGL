class LawyerLegalAffairsController < ApplicationController
  before_action :set_lawyer_legal_affair, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @lawyer_legal_affairs = LawyerLegalAffair.all
    respond_with(@lawyer_legal_affairs)
  end

  def show
    respond_with(@lawyer_legal_affair)
  end

  def new
    @lawyer_legal_affair = LawyerLegalAffair.new
    respond_with(@lawyer_legal_affair)
  end

  def edit
  end

  def create
    @lawyer_legal_affair = LawyerLegalAffair.new(lawyer_legal_affair_params)
    @lawyer_legal_affair.save
    respond_with(@lawyer_legal_affair)
  end

  def update
    @lawyer_legal_affair.update(lawyer_legal_affair_params)
    respond_with(@lawyer_legal_affair)
  end

  def destroy
    @lawyer_legal_affair.destroy
    respond_with(@lawyer_legal_affair)
  end

  private
    def set_lawyer_legal_affair
      @lawyer_legal_affair = LawyerLegalAffair.find(params[:id])
    end

    def lawyer_legal_affair_params
      params.require(:lawyer_legal_affair).permit(:legal_affair_id, :lawyer_id)
    end
end

class LegalAffairsController < ApplicationController
  before_action :set_legal_affair, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @legal_affairs = LegalAffair.all
    respond_with(@legal_affairs)
  end

  def show
    respond_with(@legal_affair)
  end

  def new
    @legal_affair = LegalAffair.new
    respond_with(@legal_affair)
  end

  def edit
  end

  def create
    @legal_affair = LegalAffair.new(legal_affair_params)
    @legal_affair.save
    respond_with(@legal_affair)
  end

  def update
    @legal_affair.update(legal_affair_params)
    respond_with(@legal_affair)
  end

  def destroy
    @legal_affair.destroy
    respond_with(@legal_affair)
  end

  private
    def set_legal_affair
      @legal_affair = LegalAffair.find(params[:id])
    end

    def legal_affair_params
      params.require(:legal_affair).permit(:bufete_id, :status_id, :sub_type_id, :legal_affair_name, :legal_affair_description, :legal_affair_begin_date, :legal_affair_end_date)
    end
end

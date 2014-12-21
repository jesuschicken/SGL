class LawyersController < ApplicationController
  before_action :set_lawyer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @lawyers = Lawyer.all
    respond_with(@lawyers)
  end

  def show
    respond_with(@lawyer)
  end

  def new
    @lawyer = Lawyer.new
    respond_with(@lawyer)
  end

  def edit
  end

  def create
    @lawyer = Lawyer.new(lawyer_params)
    @lawyer.save
    respond_with(@lawyer)
  end

  def update
    @lawyer.update(lawyer_params)
    respond_with(@lawyer)
  end

  def destroy
    @lawyer.destroy
    respond_with(@lawyer)
  end

  private
    def set_lawyer
      @lawyer = Lawyer.find(params[:id])
    end

    def lawyer_params
      params.require(:lawyer).permit(:person_id, :specialty_id, :resume_id)
    end
end

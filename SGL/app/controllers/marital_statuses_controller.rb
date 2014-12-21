class MaritalStatusesController < ApplicationController
  before_action :set_marital_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @marital_statuses = MaritalStatus.all
    respond_with(@marital_statuses)
  end

  def show
    respond_with(@marital_status)
  end

  def new
    @marital_status = MaritalStatus.new
    respond_with(@marital_status)
  end

  def edit
  end

  def create
    @marital_status = MaritalStatus.new(marital_status_params)
    @marital_status.save
    respond_with(@marital_status)
  end

  def update
    @marital_status.update(marital_status_params)
    respond_with(@marital_status)
  end

  def destroy
    @marital_status.destroy
    respond_with(@marital_status)
  end

  private
    def set_marital_status
      @marital_status = MaritalStatus.find(params[:id])
    end

    def marital_status_params
      params.require(:marital_status).permit(:marital_status_name)
    end
end

class MilestoneStatusesController < ApplicationController
  before_action :set_milestone_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @milestone_statuses = MilestoneStatus.all
    respond_with(@milestone_statuses)
  end

  def show
    respond_with(@milestone_status)
  end

  def new
    @milestone_status = MilestoneStatus.new
    respond_with(@milestone_status)
  end

  def edit
  end

  def create
    @milestone_status = MilestoneStatus.new(milestone_status_params)
    @milestone_status.save
    respond_with(@milestone_status)
  end

  def update
    @milestone_status.update(milestone_status_params)
    respond_with(@milestone_status)
  end

  def destroy
    @milestone_status.destroy
    respond_with(@milestone_status)
  end

  private
    def set_milestone_status
      @milestone_status = MilestoneStatus.find(params[:id])
    end

    def milestone_status_params
      params.require(:milestone_status).permit(:milestone_status_name)
    end
end

class MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @milestones = Milestone.all
    respond_with(@milestones)
  end

  def show
    respond_with(@milestone)
  end

  def new
    @milestone = Milestone.new
    respond_with(@milestone)
  end

  def edit
  end

  def create
    @milestone = Milestone.new(milestone_params)
    @milestone.save
    respond_with(@milestone)
  end

  def update
    @milestone.update(milestone_params)
    respond_with(@milestone)
  end

  def destroy
    @milestone.destroy
    respond_with(@milestone)
  end

  private
    def set_milestone
      @milestone = Milestone.find(params[:id])
    end

    def milestone_params
      params.require(:milestone).permit(:legal_affair_id, :milestone_status_id, :milestone_type_id, :milestone_date_in, :milestone_date_out, :milestone_log)
    end
end

class MilestoneTypesController < ApplicationController
  before_action :set_milestone_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @milestone_types = MilestoneType.all
    respond_with(@milestone_types)
  end

  def show
    respond_with(@milestone_type)
  end

  def new
    @milestone_type = MilestoneType.new
    respond_with(@milestone_type)
  end

  def edit
  end

  def create
    @milestone_type = MilestoneType.new(milestone_type_params)
    @milestone_type.save
    respond_with(@milestone_type)
  end

  def update
    @milestone_type.update(milestone_type_params)
    respond_with(@milestone_type)
  end

  def destroy
    @milestone_type.destroy
    respond_with(@milestone_type)
  end

  private
    def set_milestone_type
      @milestone_type = MilestoneType.find(params[:id])
    end

    def milestone_type_params
      params.require(:milestone_type).permit(:milestone_type_name)
    end
end

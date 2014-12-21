class SpecialtiesController < ApplicationController
  before_action :set_specialty, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @specialties = Specialty.all
    respond_with(@specialties)
  end

  def show
    respond_with(@specialty)
  end

  def new
    @specialty = Specialty.new
    respond_with(@specialty)
  end

  def edit
  end

  def create
    @specialty = Specialty.new(specialty_params)
    @specialty.save
    respond_with(@specialty)
  end

  def update
    @specialty.update(specialty_params)
    respond_with(@specialty)
  end

  def destroy
    @specialty.destroy
    respond_with(@specialty)
  end

  private
    def set_specialty
      @specialty = Specialty.find(params[:id])
    end

    def specialty_params
      params.require(:specialty).permit(:specialty_name)
    end
end

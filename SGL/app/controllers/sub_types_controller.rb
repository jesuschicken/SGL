class SubTypesController < ApplicationController
  before_action :set_sub_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sub_types = SubType.all
    respond_with(@sub_types)
  end

  def show
    respond_with(@sub_type)
  end

  def new
    @sub_type = SubType.new
    respond_with(@sub_type)
  end

  def edit
  end

  def create
    @sub_type = SubType.new(sub_type_params)
    @sub_type.save
    respond_with(@sub_type)
  end

  def update
    @sub_type.update(sub_type_params)
    respond_with(@sub_type)
  end

  def destroy
    @sub_type.destroy
    respond_with(@sub_type)
  end

  private
    def set_sub_type
      @sub_type = SubType.find(params[:id])
    end

    def sub_type_params
      params.require(:sub_type).permit(:type_id, :subtype_name)
    end
end

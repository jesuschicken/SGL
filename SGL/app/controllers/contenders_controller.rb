class ContendersController < ApplicationController
  before_action :set_contender, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @contenders = Contender.all
    respond_with(@contenders)
  end

  def show
    respond_with(@contender)
  end

  def new
    @contender = Contender.new
    respond_with(@contender)
  end

  def edit
  end

  def create
    @contender = Contender.new(contender_params)
    @contender.save
    respond_with(@contender)
  end

  def update
    @contender.update(contender_params)
    respond_with(@contender)
  end

  def destroy
    @contender.destroy
    respond_with(@contender)
  end

  private
    def set_contender
      @contender = Contender.find(params[:id])
    end

    def contender_params
      params.require(:contender).permit(:person_id, :legal_affair_id)
    end
end

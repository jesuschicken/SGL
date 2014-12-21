class PrimaryRolesController < ApplicationController
  before_action :set_primary_role, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @primary_roles = PrimaryRole.all
    respond_with(@primary_roles)
  end

  def show
    respond_with(@primary_role)
  end

  def new
    @primary_role = PrimaryRole.new
    respond_with(@primary_role)
  end

  def edit
  end

  def create
    @primary_role = PrimaryRole.new(primary_role_params)
    @primary_role.save
    respond_with(@primary_role)
  end

  def update
    @primary_role.update(primary_role_params)
    respond_with(@primary_role)
  end

  def destroy
    @primary_role.destroy
    respond_with(@primary_role)
  end

  private
    def set_primary_role
      @primary_role = PrimaryRole.find(params[:id])
    end

    def primary_role_params
      params.require(:primary_role).permit(:role_name)
    end
end

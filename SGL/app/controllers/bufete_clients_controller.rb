class BufeteClientsController < ApplicationController
  before_action :set_bufete_client, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bufete_clients = BufeteClient.all
    respond_with(@bufete_clients)
  end

  def show
    respond_with(@bufete_client)
  end

  def new
    @bufete_client = BufeteClient.new
    respond_with(@bufete_client)
  end

  def edit
  end

  def create
    @bufete_client = BufeteClient.new(bufete_client_params)
    @bufete_client.save
    respond_with(@bufete_client)
  end

  def update
    @bufete_client.update(bufete_client_params)
    respond_with(@bufete_client)
  end

  def destroy
    @bufete_client.destroy
    respond_with(@bufete_client)
  end

  private
    def set_bufete_client
      @bufete_client = BufeteClient.find(params[:id])
    end

    def bufete_client_params
      params.require(:bufete_client).permit(:person_id, :bufete_id, :bufete_client_is_active)
    end
end

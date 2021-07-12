# frozen_string_literal: true

module Admin::V1
  class ClientsController < ApiController
    before_action :load_client, only: %i[show update]
    def index
      @clients = Client.all
    end

    def show; end

    def create
      @client = Client.new
      @client.attributes = client_params
      @client.save!
      render :show
    end

    def update
      @client.attributes = client_params
      @client.save!
    end

    private

    def load_client
      @client = Client.find(params[:id])
    end

    def client_params
      return {} unless params.has_key?(:client)

      params.require(:client).permit(:id, :full_name, :document, :cellphone, :address, :complement,
        :district, :city_id, :under_age, :responsible_id, :active)
    end
  end
end

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
      if @client.save
        render :show
      else
        render json: {
          message: @client.errors.full_messages
        }, status: 500
      end
    end

    def update
      @client.attributes = client_params
      if @client.save
        render :show
      else
        render json: {
          message: @client.errors.full_messages
        }, status: 500
      end
    end

    private

    def load_client
      @client = Client.find(params[:id])
    end

    def client_params
      params.require(:client).permit(:id, :full_name, :document, :cellphone, :address, :complement,
        :district, :city_id, :under_age, :responsible_id, :active, :type_document, :date)
    end
  end
end

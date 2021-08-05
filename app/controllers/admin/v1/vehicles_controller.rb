# frozen_string_literal: true

module Admin::V1
  class Admin::V1::VehiclesController < ApiController
    before_action :load_vehicle, only: %i[show update]
    def index
      @vehicles = Vehicle.all
    end

    def show; end

    def create
      @vehicle = Vehicle.new
      @vehicle.attributes = vehicle_params
      if @vehicle.save
        render :show
      else
        render json: {
          message: @vehicle.errors.full_messages
        }, status: 500
      end
    end

    def update
      @vehicle.attributes = vehicle_params
      if @vehicle.save
        render :show
      else
        render json: {
          message: @vehicle.errors.full_messages
        }, status: 500
      end
    end

    private

    def load_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    def vehicle_params
      params.require(:vehicle).permit(:id, :plate, :model_description, :year, :toilet, :number_of_seats, :active)
    end
  end
end
# frozen_string_literal: true

module Admin::V1
  class Admin::V1::TravelsController < ApiController
    before_action :load_travel, only: %i[show update]
    def index
      @travels = Travel.all
    end

    def show; end

    def create
      @travel = Travel.new
      @travel.attributes = travel_params
      if @travel.save
        render :show
      else
        render json: {
          message: @travel.errors.full_messages
        }, status: 500
      end
    end

    def update
      @travel.attributes = travel_params
      if @travel.attributes.save
        render :show
      else
        render json: {
          message: @travel.errors.full_messages
        }, status: 500
      end
    end

    private

    def load_travel
      @travel = Travel.find(params[:id])
    end

    def travel_params
      params.require(:travel).permit(:id, :vehicle_id, :driver_id, :origin_id,
        :destination_id, :date, :status)
    end
  end
end
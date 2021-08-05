# frozen_string_literal: true

module Admin::V1
  class Admin::V1::DriversController < ApiController
    before_action :load_driver, only: %i[show update]
    def index
      @drivers = Driver.all
    end

    def show; end

    def create
      @driver = Driver.new
      @driver.attributes = driver_params
      if @driver.save
        render :show
      else
        render json: {
          message: @driver.errors.full_messages
        }, status: 500
      end
    end

    def update
      @driver.attributes = driver_params
      if @driver.save
        render :show
      else
        render json: {
          message: @driver.errors.full_messages
        }, status: 500
      end
    end

    private

    def load_driver
      @driver = Driver.find(params[:id])
    end

    def driver_params
      params.require(:driver).permit(:id, :full_name, :cpf, :cellphone_one, :cellphone_two,
        :nickname, :active)
    end
  end
end
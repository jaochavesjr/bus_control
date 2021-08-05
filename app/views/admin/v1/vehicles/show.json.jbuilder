# frozen_string_literal: true

json.vehicle do
  json.(@vehicle, :id, :plate, :model_description, :year, :toilet, :number_of_seats, :active)
end
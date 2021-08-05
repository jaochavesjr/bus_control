# frozen_string_literal: true

json.vehicles do
  json.array! @vehicles, :id, :plate, :model_description, :year, :toilet, :number_of_seats, :active
end

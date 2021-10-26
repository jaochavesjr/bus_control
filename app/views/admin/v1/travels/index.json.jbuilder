# frozen_string_literal: true

json.travels do
  json.array! @travels do |travel|
    json.partial! travel
    # json.partial! travel.vehicle
    # json.partial! travel.driver
  end
end

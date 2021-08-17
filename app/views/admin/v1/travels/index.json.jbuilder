# frozen_string_literal: true

json.travels do
  json.array! @travels, :id, :vehicle_id, :driver_id, :origin_id, :destination_id, :date, :status
end

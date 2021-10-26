json.(travel, :id, :date, :status)
json.vehicle travel.vehicle.plate
json.driver travel.driver.nickname
json.origin travel.origin.name
json.destination travel.destination.name

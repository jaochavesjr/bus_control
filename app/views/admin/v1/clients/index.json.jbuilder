# frozen_string_literal: true

json.clients do
  json.array! @clients, :id, :full_name, :document, :cellphone, :address, :complement,
    :district, :city_id, :under_age, :active
end

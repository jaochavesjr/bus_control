# frozen_string_literal: true

json.client do
  json.(@client, :id, :full_name, :type_document, :document, :cellphone, :address, :complement,
    :district, :city_id, :under_age, :active, :responsible_id, :date)
end
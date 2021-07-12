# frozen_string_literal: true

json.client do
  json.(@client, :id, :full_name, :rg, :cpf, :cellphone, :address, :complement,
    :district, :city_id, :under_age, :active, :responsible_id)
end
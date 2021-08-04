# frozen_string_literal: true

json.drivers do
  json.array! @drivers, :id, :full_name, :cellphone_one, :cellphone_two, :cpf, :nickname, :active
end

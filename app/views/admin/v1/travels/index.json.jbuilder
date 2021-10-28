# frozen_string_literal: true

json.travels do
  json.array! @travels do |travel|
    json.partial! travel
  end
end

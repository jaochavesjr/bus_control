# frozen_string_literal: true

class Travel < ApplicationRecord
  belongs_to :vehicle
  belongs_to :driver
  belongs_to :origin, class_name: 'City'
  belongs_to :destination, class_name: 'City'
end

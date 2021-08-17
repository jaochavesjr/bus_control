# frozen_string_literal: true

class Travel < ApplicationRecord
  belongs_to :vehicle
  belongs_to :driver
  belongs_to :origin, class_name: 'City'
  belongs_to :destination, class_name: 'City'
  validates :date, presence: true
  validates :status, presence: true
  has_enumeration_for :status, with: StatusTravels, create_helpers: true, create_scopes: true
end

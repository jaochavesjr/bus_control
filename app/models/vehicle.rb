# frozen_string_literal: true

class Vehicle < ApplicationRecord
  validates :plate, uniqueness: true, presence: true
  validates :model_description, presence: true
  validates :year, presence: true
  validates :toilet, presence: true
end

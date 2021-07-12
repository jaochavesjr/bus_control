# frozen_string_literal: true

class Client < ApplicationRecord
  belongs_to :city
  belongs_to :manager, class_name: 'Employee', optional: true
end

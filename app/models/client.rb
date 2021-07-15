# frozen_string_literal: true

class Client < ApplicationRecord
  belongs_to :city
  belongs_to :manager, class_name: 'Employee', optional: true

  validates :document, presence: true, uniqueness: { case_sensitive: false }
  enum type_ducument: { rg: 1, cpf: 2 }
  validates :type_ducument, inclusion: { in: [1, 2] }
end

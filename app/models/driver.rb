# frozen_string_literal: true

class Driver < ApplicationRecord
  validates :cpf, uniqueness: true, presence: true
  validates :cellphone_one, presence: true
  validates :full_name, presence: true
  validates :nickname, uniqueness: true, presence: true
end

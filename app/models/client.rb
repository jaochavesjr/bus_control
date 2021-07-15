# frozen_string_literal: true

class Client < ApplicationRecord
  belongs_to :city
  belongs_to :manager, class_name: 'Employee', optional: true

  validates :document, uniqueness: { case_sensitive: false }, presence: true
  validates :type_document, presence: true
  has_enumeration_for :type_document, with: TypeDocuments, create_helpers: true, create_scopes: true
end

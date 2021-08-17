# frozen_string_literal: true

class TypeOfPayment < ApplicationRecord
  has_enumeration_for :type, with: TypePayments, create_helpers: true, create_scopes: true
end

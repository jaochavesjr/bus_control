# frozen_string_literal: true

class TypeOfPayment < ApplicationRecord
  enum type: { cash: 1, debit_card: 2, credit_card: 3, pix: 4 }
end

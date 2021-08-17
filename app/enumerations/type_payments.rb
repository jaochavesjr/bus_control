class TypePayments < EnumerateIt::Base
  associate_values(
    :cash,
    :debit_card,
    :credit_card,
    :pix
  )
end
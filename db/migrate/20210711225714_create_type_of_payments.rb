class CreateTypeOfPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :type_of_payments do |t|
      t.integer :type

      t.timestamps
    end
  end
end

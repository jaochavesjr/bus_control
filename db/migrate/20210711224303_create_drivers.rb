class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :full_name
      t.string :cpf
      t.string :cellphone_one
      t.string :cellphone_two
      t.string :nickname

      t.timestamps
    end
  end
end

class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :full_name
      t.string :rg
      t.string :cpf
      t.string :cellphone
      t.string :address
      t.string :complment
      t.string :district
      t.references :city, null: false, foreign_key: true
      t.boolean :under_age
      t.references :responsible, foreign_key: { to_table: :clients }
      t.boolean :active, default: true
    end
  end
end

class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :plate
      t.string :model_description
      t.string :year
      t.boolean :toilet
      t.integer :number_of_seats

      t.timestamps
    end
  end
end

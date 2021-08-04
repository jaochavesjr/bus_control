class AddActiveToDriver < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :active, :boolean, default: true
  end
end

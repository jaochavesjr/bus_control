class AddDateToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :date, :date
  end
end

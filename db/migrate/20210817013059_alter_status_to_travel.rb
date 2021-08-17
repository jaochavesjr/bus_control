class AlterStatusToTravel < ActiveRecord::Migration[6.1]
  def change
    change_column :travels, :status, :string
  end
end

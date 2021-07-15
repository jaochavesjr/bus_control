class AlterTypeDocumentsToClients < ActiveRecord::Migration[6.1]
  def change
    change_column :clients, :type_document, :string
  end
end

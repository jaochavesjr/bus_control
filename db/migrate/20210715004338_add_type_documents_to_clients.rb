class AddTypeDocumentsToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :type_document, :integer
  end
end

class AddColumnsToProduct < ActiveRecord::Migration[5.2]
  def change
	add_column :products, :producent, :string
	add_column :products, :price, :float
	add_column :products, :description, :string
end
end

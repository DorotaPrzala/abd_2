class AddColumnsToProductToOrders < ActiveRecord::Migration[5.2]
  def change
	add_column :product_to_orders, :quantity, :integer
  end
end

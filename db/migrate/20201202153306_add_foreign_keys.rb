class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
	add_reference :orders, :employees, foreign_key:true
	add_reference :orders, :couriers, foreign_key:true
	add_reference :orders, :volonteers, foreign_key:true
	add_reference :product_to_orders, :orders, foreign_key:true
	add_reference :product_to_orders, :products, foreign_key:true
  end
end
